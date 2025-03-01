import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_book_rating_repo.dart';
import '../params/book_rating_list_param.dart';
import '../book_rating_schema.schema.dart';

part 'book_rating_list_pagination_provider.g.dart';

const int _pageBookRatingLimit = 25;

@riverpod
class BookRatingListPagination extends _$BookRatingListPagination with LoggerMixin {
  @override
  FutureOr<IList<BookRatingModel>> build({
    required int page,
    required BookRatingListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      BookRatingPaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageBookRatingLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(bookRatingRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          BookRatingPaginationTracker.instance.trackMultipleBookRatings(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} bookRatings for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load bookRatings: $e');
    }
  }

  void _log(String message) {
    logDebug('[BookRatingListPagination] $message');
  }

  void _updateItem(BookRatingModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(BookRatingModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(BookRatingId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<BookRatingModel>? bookRatingPaginatedAtIndex(
  Ref ref,
  int index, {
  required BookRatingListParam param,
}) {
  const limit = _pageBookRatingLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(bookRatingListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(bookRatingListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class BookRatingPaginationTracker {
  static final BookRatingPaginationTracker instance = BookRatingPaginationTracker._();
  BookRatingPaginationTracker._();

  final _items = <BookRatingId, Set<(int page, BookRatingListParam param)>>{};

  void trackBookRating(BookRatingId id, int page, BookRatingListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleBookRatings(List<BookRatingId> ids, int page, BookRatingListParam param) {
    for (final id in ids) {
      trackBookRating(id, page, param);
    }
  }

  void untrackPage(int page, BookRatingListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, BookRatingListParam param)> getEntriesForBookRating(BookRatingId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required BookRatingListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageBookRatingLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(bookRatingListPaginationProvider(page: page, param: param))) {
        ref.invalidate(bookRatingListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, BookRatingModel item) {
    for (final entry in getEntriesForBookRating(item.id)) {
      ref
          .read(bookRatingListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, BookRatingId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForBookRating(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(bookRatingListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <BookRatingListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(bookRatingListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, BookRatingListParam param) {
    for (var page = startPage + 1;
        ref.exists(bookRatingListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(bookRatingListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(bookRatingListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(bookRatingListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(bookRatingListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<BookRatingModel> items) {
    final updatesByPage = <(int, BookRatingListParam), List<BookRatingModel>>{};

    for (final item in items) {
      final entries = getEntriesForBookRating(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageBookRatingLimit / 2) {
        ref.invalidate(bookRatingListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(bookRatingListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class BookRatingPaginationState extends _$BookRatingPaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required BookRatingListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(bookRatingListPaginationProvider(page: i, param: param));
      if (pageState.isLoading) {
        isLoading = true;
      }
      if (!pageState.hasError && pageState.hasValue) {
        highestLoadedPage = i;
      }
    }

    return (
      isLoading: isLoading,
      totalPages: highestLoadedPage + 1,
      currentPage: highestLoadedPage,
    );
  }
}
