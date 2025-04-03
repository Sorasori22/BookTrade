import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/account/account.dart';
import '../book_schema.schema.dart';
import '../i_book_repo.dart';
import '../params/book_list_param.dart';

part 'book_list_pagination_provider.g.dart';

const int _pageBookLimit = 25;

@riverpod
class BookListPagination extends _$BookListPagination with LoggerMixin {
  @override
  FutureOr<IList<BookModel>> build({
    required int page,
    required BookListParam param,
  }) async {
    ref.watch(currentUserIdProvider);
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      BookPaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageBookLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(bookRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          BookPaginationTracker.instance.trackMultipleBooks(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} books for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load books: $e');
    }
  }

  void _log(String message) {
    logDebug('[BookListPagination] $message');
  }

  void _updateItem(BookModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(BookModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(BookId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<BookModel>? bookPaginatedAtIndex(
  Ref ref,
  int index, {
  required BookListParam param,
}) {
  const limit = _pageBookLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(bookListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(bookListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class BookPaginationTracker {
  static final BookPaginationTracker instance = BookPaginationTracker._();
  BookPaginationTracker._();

  final _items = <BookId, Set<(int page, BookListParam param)>>{};

  void trackBook(BookId id, int page, BookListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleBooks(List<BookId> ids, int page, BookListParam param) {
    for (final id in ids) {
      trackBook(id, page, param);
    }
  }

  void untrackPage(int page, BookListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, BookListParam param)> getEntriesForBook(BookId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required BookListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageBookLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(bookListPaginationProvider(page: page, param: param))) {
        ref.invalidate(bookListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, BookModel item) {
    for (final entry in getEntriesForBook(item.id)) {
      ref
          .read(bookListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, BookId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForBook(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(bookListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <BookListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(bookListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, BookListParam param) {
    for (var page = startPage + 1;
        ref.exists(bookListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(bookListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(bookListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(bookListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(bookListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<BookModel> items) {
    final updatesByPage = <(int, BookListParam), List<BookModel>>{};

    for (final item in items) {
      final entries = getEntriesForBook(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageBookLimit / 2) {
        ref.invalidate(bookListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(bookListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class BookPaginationState extends _$BookPaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required BookListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(bookListPaginationProvider(page: i, param: param));
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
