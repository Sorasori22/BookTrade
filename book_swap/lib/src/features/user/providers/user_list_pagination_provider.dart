import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_user_repo.dart';
import '../params/user_list_param.dart';
import '../user_schema.schema.dart';

part 'user_list_pagination_provider.g.dart';

const int _pageUserLimit = 25;

@riverpod
class UserListPagination extends _$UserListPagination with LoggerMixin {
  @override
  FutureOr<IList<UserModel>> build({
    required int page,
    required UserListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      UserPaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageUserLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(userRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          UserPaginationTracker.instance.trackMultipleUsers(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} users for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load users: $e');
    }
  }

  void _log(String message) {
    logDebug('[UserListPagination] $message');
  }

  void _updateItem(UserModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(UserModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(UserId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<UserModel>? userPaginatedAtIndex(
  Ref ref,
  int index, {
  required UserListParam param,
}) {
  const limit = _pageUserLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(userListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(userListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class UserPaginationTracker {
  static final UserPaginationTracker instance = UserPaginationTracker._();
  UserPaginationTracker._();

  final _items = <UserId, Set<(int page, UserListParam param)>>{};

  void trackUser(UserId id, int page, UserListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleUsers(List<UserId> ids, int page, UserListParam param) {
    for (final id in ids) {
      trackUser(id, page, param);
    }
  }

  void untrackPage(int page, UserListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, UserListParam param)> getEntriesForUser(UserId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required UserListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageUserLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(userListPaginationProvider(page: page, param: param))) {
        ref.invalidate(userListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, UserModel item) {
    for (final entry in getEntriesForUser(item.id)) {
      ref
          .read(userListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, UserId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForUser(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(userListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <UserListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(userListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, UserListParam param) {
    for (var page = startPage + 1;
        ref.exists(userListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(userListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(userListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(userListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(userListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<UserModel> items) {
    final updatesByPage = <(int, UserListParam), List<UserModel>>{};

    for (final item in items) {
      final entries = getEntriesForUser(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageUserLimit / 2) {
        ref.invalidate(userListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(userListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class PaginationState extends _$PaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required UserListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(userListPaginationProvider(page: i, param: param));
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
