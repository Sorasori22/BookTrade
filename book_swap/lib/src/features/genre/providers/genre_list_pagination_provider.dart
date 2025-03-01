import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_genre_repo.dart';
import '../params/genre_list_param.dart';
import '../genre_schema.schema.dart';

part 'genre_list_pagination_provider.g.dart';

const int _pageGenreLimit = 25;

@riverpod
class GenreListPagination extends _$GenreListPagination with LoggerMixin {
  @override
  FutureOr<IList<GenreModel>> build({
    required int page,
    required GenreListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      GenrePaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageGenreLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(genreRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          GenrePaginationTracker.instance.trackMultipleGenres(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} genres for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load genres: $e');
    }
  }

  void _log(String message) {
    logDebug('[GenreListPagination] $message');
  }

  void _updateItem(GenreModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(GenreModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(GenreId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<GenreModel>? genrePaginatedAtIndex(
  Ref ref,
  int index, {
  required GenreListParam param,
}) {
  const limit = _pageGenreLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(genreListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(genreListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class GenrePaginationTracker {
  static final GenrePaginationTracker instance = GenrePaginationTracker._();
  GenrePaginationTracker._();

  final _items = <GenreId, Set<(int page, GenreListParam param)>>{};

  void trackGenre(GenreId id, int page, GenreListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleGenres(List<GenreId> ids, int page, GenreListParam param) {
    for (final id in ids) {
      trackGenre(id, page, param);
    }
  }

  void untrackPage(int page, GenreListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, GenreListParam param)> getEntriesForGenre(GenreId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required GenreListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageGenreLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(genreListPaginationProvider(page: page, param: param))) {
        ref.invalidate(genreListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, GenreModel item) {
    for (final entry in getEntriesForGenre(item.id)) {
      ref
          .read(genreListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, GenreId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForGenre(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(genreListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <GenreListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(genreListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, GenreListParam param) {
    for (var page = startPage + 1;
        ref.exists(genreListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(genreListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(genreListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(genreListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(genreListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<GenreModel> items) {
    final updatesByPage = <(int, GenreListParam), List<GenreModel>>{};

    for (final item in items) {
      final entries = getEntriesForGenre(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageGenreLimit / 2) {
        ref.invalidate(genreListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(genreListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class GenrePaginationState extends _$GenrePaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required GenreListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(genreListPaginationProvider(page: i, param: param));
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
