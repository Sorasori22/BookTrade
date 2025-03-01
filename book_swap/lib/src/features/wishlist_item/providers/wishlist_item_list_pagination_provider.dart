import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_wishlist_item_repo.dart';
import '../params/wishlist_item_list_param.dart';
import '../wishlist_item_schema.schema.dart';

part 'wishlist_item_list_pagination_provider.g.dart';

const int _pageWishlistItemLimit = 25;

@riverpod
class WishlistItemListPagination extends _$WishlistItemListPagination with LoggerMixin {
  @override
  FutureOr<IList<WishlistItemModel>> build({
    required int page,
    required WishlistItemListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      WishlistItemPaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageWishlistItemLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(wishlistItemRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          WishlistItemPaginationTracker.instance.trackMultipleWishlistItems(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} wishlistItems for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load wishlistItems: $e');
    }
  }

  void _log(String message) {
    logDebug('[WishlistItemListPagination] $message');
  }

  void _updateItem(WishlistItemModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(WishlistItemModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(WishlistItemId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<WishlistItemModel>? wishlistItemPaginatedAtIndex(
  Ref ref,
  int index, {
  required WishlistItemListParam param,
}) {
  const limit = _pageWishlistItemLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(wishlistItemListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(wishlistItemListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class WishlistItemPaginationTracker {
  static final WishlistItemPaginationTracker instance = WishlistItemPaginationTracker._();
  WishlistItemPaginationTracker._();

  final _items = <WishlistItemId, Set<(int page, WishlistItemListParam param)>>{};

  void trackWishlistItem(WishlistItemId id, int page, WishlistItemListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleWishlistItems(List<WishlistItemId> ids, int page, WishlistItemListParam param) {
    for (final id in ids) {
      trackWishlistItem(id, page, param);
    }
  }

  void untrackPage(int page, WishlistItemListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, WishlistItemListParam param)> getEntriesForWishlistItem(WishlistItemId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required WishlistItemListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageWishlistItemLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(wishlistItemListPaginationProvider(page: page, param: param))) {
        ref.invalidate(wishlistItemListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, WishlistItemModel item) {
    for (final entry in getEntriesForWishlistItem(item.id)) {
      ref
          .read(wishlistItemListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, WishlistItemId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForWishlistItem(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(wishlistItemListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <WishlistItemListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(wishlistItemListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, WishlistItemListParam param) {
    for (var page = startPage + 1;
        ref.exists(wishlistItemListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(wishlistItemListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(wishlistItemListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(wishlistItemListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(wishlistItemListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<WishlistItemModel> items) {
    final updatesByPage = <(int, WishlistItemListParam), List<WishlistItemModel>>{};

    for (final item in items) {
      final entries = getEntriesForWishlistItem(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageWishlistItemLimit / 2) {
        ref.invalidate(wishlistItemListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(wishlistItemListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class WishlistItemPaginationState extends _$WishlistItemPaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required WishlistItemListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(wishlistItemListPaginationProvider(page: i, param: param));
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
