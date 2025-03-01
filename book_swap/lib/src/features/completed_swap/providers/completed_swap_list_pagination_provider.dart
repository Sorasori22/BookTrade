import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_completed_swap_repo.dart';
import '../params/completed_swap_list_param.dart';
import '../completed_swap_schema.schema.dart';

part 'completed_swap_list_pagination_provider.g.dart';

const int _pageCompletedSwapLimit = 25;

@riverpod
class CompletedSwapListPagination extends _$CompletedSwapListPagination with LoggerMixin {
  @override
  FutureOr<IList<CompletedSwapModel>> build({
    required int page,
    required CompletedSwapListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      CompletedSwapPaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageCompletedSwapLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(completedSwapRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          CompletedSwapPaginationTracker.instance.trackMultipleCompletedSwaps(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} completedSwaps for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load completedSwaps: $e');
    }
  }

  void _log(String message) {
    logDebug('[CompletedSwapListPagination] $message');
  }

  void _updateItem(CompletedSwapModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(CompletedSwapModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(CompletedSwapId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<CompletedSwapModel>? completedSwapPaginatedAtIndex(
  Ref ref,
  int index, {
  required CompletedSwapListParam param,
}) {
  const limit = _pageCompletedSwapLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(completedSwapListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(completedSwapListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class CompletedSwapPaginationTracker {
  static final CompletedSwapPaginationTracker instance = CompletedSwapPaginationTracker._();
  CompletedSwapPaginationTracker._();

  final _items = <CompletedSwapId, Set<(int page, CompletedSwapListParam param)>>{};

  void trackCompletedSwap(CompletedSwapId id, int page, CompletedSwapListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleCompletedSwaps(List<CompletedSwapId> ids, int page, CompletedSwapListParam param) {
    for (final id in ids) {
      trackCompletedSwap(id, page, param);
    }
  }

  void untrackPage(int page, CompletedSwapListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, CompletedSwapListParam param)> getEntriesForCompletedSwap(CompletedSwapId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required CompletedSwapListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageCompletedSwapLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(completedSwapListPaginationProvider(page: page, param: param))) {
        ref.invalidate(completedSwapListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, CompletedSwapModel item) {
    for (final entry in getEntriesForCompletedSwap(item.id)) {
      ref
          .read(completedSwapListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, CompletedSwapId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForCompletedSwap(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(completedSwapListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <CompletedSwapListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(completedSwapListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, CompletedSwapListParam param) {
    for (var page = startPage + 1;
        ref.exists(completedSwapListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(completedSwapListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(completedSwapListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(completedSwapListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(completedSwapListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<CompletedSwapModel> items) {
    final updatesByPage = <(int, CompletedSwapListParam), List<CompletedSwapModel>>{};

    for (final item in items) {
      final entries = getEntriesForCompletedSwap(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageCompletedSwapLimit / 2) {
        ref.invalidate(completedSwapListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(completedSwapListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class CompletedSwapPaginationState extends _$CompletedSwapPaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required CompletedSwapListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(completedSwapListPaginationProvider(page: i, param: param));
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
