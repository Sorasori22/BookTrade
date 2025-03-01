import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_book_genre_repo.dart';
import '../params/book_genre_list_param.dart';
import '../book_genre_schema.schema.dart';

part 'book_genre_list_pagination_provider.g.dart';

const int _pageBookGenreLimit = 25;

@riverpod
class BookGenreListPagination extends _$BookGenreListPagination with LoggerMixin {
  @override
  FutureOr<IList<BookGenreModel>> build({
    required int page,
    required BookGenreListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      BookGenrePaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageBookGenreLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(bookGenreRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          BookGenrePaginationTracker.instance.trackMultipleBookGenres(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} bookGenres for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load bookGenres: $e');
    }
  }

  void _log(String message) {
    logDebug('[BookGenreListPagination] $message');
  }

  void _updateItem(BookGenreModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(BookGenreModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(BookGenreId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<BookGenreModel>? bookGenrePaginatedAtIndex(
  Ref ref,
  int index, {
  required BookGenreListParam param,
}) {
  const limit = _pageBookGenreLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(bookGenreListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(bookGenreListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class BookGenrePaginationTracker {
  static final BookGenrePaginationTracker instance = BookGenrePaginationTracker._();
  BookGenrePaginationTracker._();

  final _items = <BookGenreId, Set<(int page, BookGenreListParam param)>>{};

  void trackBookGenre(BookGenreId id, int page, BookGenreListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleBookGenres(List<BookGenreId> ids, int page, BookGenreListParam param) {
    for (final id in ids) {
      trackBookGenre(id, page, param);
    }
  }

  void untrackPage(int page, BookGenreListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, BookGenreListParam param)> getEntriesForBookGenre(BookGenreId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required BookGenreListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageBookGenreLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(bookGenreListPaginationProvider(page: page, param: param))) {
        ref.invalidate(bookGenreListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, BookGenreModel item) {
    for (final entry in getEntriesForBookGenre(item.id)) {
      ref
          .read(bookGenreListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, BookGenreId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForBookGenre(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(bookGenreListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <BookGenreListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(bookGenreListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, BookGenreListParam param) {
    for (var page = startPage + 1;
        ref.exists(bookGenreListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(bookGenreListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(bookGenreListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(bookGenreListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(bookGenreListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<BookGenreModel> items) {
    final updatesByPage = <(int, BookGenreListParam), List<BookGenreModel>>{};

    for (final item in items) {
      final entries = getEntriesForBookGenre(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageBookGenreLimit / 2) {
        ref.invalidate(bookGenreListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(bookGenreListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class BookGenrePaginationState extends _$BookGenrePaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required BookGenreListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(bookGenreListPaginationProvider(page: i, param: param));
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
