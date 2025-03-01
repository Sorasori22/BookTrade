import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_trade_request_repo.dart';
import '../params/trade_request_list_param.dart';
import '../trade_request_schema.schema.dart';

part 'trade_request_list_pagination_provider.g.dart';

const int _pageTradeRequestLimit = 25;

@riverpod
class TradeRequestListPagination extends _$TradeRequestListPagination with LoggerMixin {
  @override
  FutureOr<IList<TradeRequestModel>> build({
    required int page,
    required TradeRequestListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      TradeRequestPaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageTradeRequestLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(tradeRequestRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          TradeRequestPaginationTracker.instance.trackMultipleTradeRequests(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} tradeRequests for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load tradeRequests: $e');
    }
  }

  void _log(String message) {
    logDebug('[TradeRequestListPagination] $message');
  }

  void _updateItem(TradeRequestModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(TradeRequestModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(TradeRequestId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<TradeRequestModel>? tradeRequestPaginatedAtIndex(
  Ref ref,
  int index, {
  required TradeRequestListParam param,
}) {
  const limit = _pageTradeRequestLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(tradeRequestListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(tradeRequestListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class TradeRequestPaginationTracker {
  static final TradeRequestPaginationTracker instance = TradeRequestPaginationTracker._();
  TradeRequestPaginationTracker._();

  final _items = <TradeRequestId, Set<(int page, TradeRequestListParam param)>>{};

  void trackTradeRequest(TradeRequestId id, int page, TradeRequestListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleTradeRequests(List<TradeRequestId> ids, int page, TradeRequestListParam param) {
    for (final id in ids) {
      trackTradeRequest(id, page, param);
    }
  }

  void untrackPage(int page, TradeRequestListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, TradeRequestListParam param)> getEntriesForTradeRequest(TradeRequestId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required TradeRequestListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageTradeRequestLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(tradeRequestListPaginationProvider(page: page, param: param))) {
        ref.invalidate(tradeRequestListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, TradeRequestModel item) {
    for (final entry in getEntriesForTradeRequest(item.id)) {
      ref
          .read(tradeRequestListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, TradeRequestId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForTradeRequest(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(tradeRequestListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <TradeRequestListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(tradeRequestListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, TradeRequestListParam param) {
    for (var page = startPage + 1;
        ref.exists(tradeRequestListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(tradeRequestListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(tradeRequestListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(tradeRequestListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(tradeRequestListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<TradeRequestModel> items) {
    final updatesByPage = <(int, TradeRequestListParam), List<TradeRequestModel>>{};

    for (final item in items) {
      final entries = getEntriesForTradeRequest(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageTradeRequestLimit / 2) {
        ref.invalidate(tradeRequestListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(tradeRequestListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class TradeRequestPaginationState extends _$TradeRequestPaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required TradeRequestListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(tradeRequestListPaginationProvider(page: i, param: param));
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
