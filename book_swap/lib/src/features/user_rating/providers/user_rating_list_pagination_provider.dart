import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_user_rating_repo.dart';
import '../params/user_rating_list_param.dart';
import '../user_rating_schema.schema.dart';

part 'user_rating_list_pagination_provider.g.dart';

const int _pageUserRatingLimit = 25;

@riverpod
class UserRatingListPagination extends _$UserRatingListPagination with LoggerMixin {
  @override
  FutureOr<IList<UserRatingModel>> build({
    required int page,
    required UserRatingListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      UserRatingPaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageUserRatingLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(userRatingRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          UserRatingPaginationTracker.instance.trackMultipleUserRatings(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} userRatings for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load userRatings: $e');
    }
  }

  void _log(String message) {
    logDebug('[UserRatingListPagination] $message');
  }

  void _updateItem(UserRatingModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(UserRatingModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(UserRatingId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<UserRatingModel>? userRatingPaginatedAtIndex(
  Ref ref,
  int index, {
  required UserRatingListParam param,
}) {
  const limit = _pageUserRatingLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(userRatingListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(userRatingListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class UserRatingPaginationTracker {
  static final UserRatingPaginationTracker instance = UserRatingPaginationTracker._();
  UserRatingPaginationTracker._();

  final _items = <UserRatingId, Set<(int page, UserRatingListParam param)>>{};

  void trackUserRating(UserRatingId id, int page, UserRatingListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleUserRatings(List<UserRatingId> ids, int page, UserRatingListParam param) {
    for (final id in ids) {
      trackUserRating(id, page, param);
    }
  }

  void untrackPage(int page, UserRatingListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, UserRatingListParam param)> getEntriesForUserRating(UserRatingId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required UserRatingListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageUserRatingLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(userRatingListPaginationProvider(page: page, param: param))) {
        ref.invalidate(userRatingListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, UserRatingModel item) {
    for (final entry in getEntriesForUserRating(item.id)) {
      ref
          .read(userRatingListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, UserRatingId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForUserRating(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(userRatingListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <UserRatingListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(userRatingListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, UserRatingListParam param) {
    for (var page = startPage + 1;
        ref.exists(userRatingListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(userRatingListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(userRatingListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(userRatingListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(userRatingListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<UserRatingModel> items) {
    final updatesByPage = <(int, UserRatingListParam), List<UserRatingModel>>{};

    for (final item in items) {
      final entries = getEntriesForUserRating(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageUserRatingLimit / 2) {
        ref.invalidate(userRatingListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(userRatingListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class UserRatingPaginationState extends _$UserRatingPaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required UserRatingListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(userRatingListPaginationProvider(page: i, param: param));
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
