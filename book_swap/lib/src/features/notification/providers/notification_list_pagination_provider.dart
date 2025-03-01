import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_notification_repo.dart';
import '../params/notification_list_param.dart';
import '../notification_schema.schema.dart';

part 'notification_list_pagination_provider.g.dart';

const int _pageNotificationLimit = 25;

@riverpod
class NotificationListPagination extends _$NotificationListPagination with LoggerMixin {
  @override
  FutureOr<IList<NotificationModel>> build({
    required int page,
    required NotificationListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      NotificationPaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageNotificationLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(notificationRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          NotificationPaginationTracker.instance.trackMultipleNotifications(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} notifications for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load notifications: $e');
    }
  }

  void _log(String message) {
    logDebug('[NotificationListPagination] $message');
  }

  void _updateItem(NotificationModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(NotificationModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(NotificationId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<NotificationModel>? notificationPaginatedAtIndex(
  Ref ref,
  int index, {
  required NotificationListParam param,
}) {
  const limit = _pageNotificationLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(notificationListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(notificationListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class NotificationPaginationTracker {
  static final NotificationPaginationTracker instance = NotificationPaginationTracker._();
  NotificationPaginationTracker._();

  final _items = <NotificationId, Set<(int page, NotificationListParam param)>>{};

  void trackNotification(NotificationId id, int page, NotificationListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleNotifications(List<NotificationId> ids, int page, NotificationListParam param) {
    for (final id in ids) {
      trackNotification(id, page, param);
    }
  }

  void untrackPage(int page, NotificationListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, NotificationListParam param)> getEntriesForNotification(NotificationId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required NotificationListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageNotificationLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(notificationListPaginationProvider(page: page, param: param))) {
        ref.invalidate(notificationListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, NotificationModel item) {
    for (final entry in getEntriesForNotification(item.id)) {
      ref
          .read(notificationListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, NotificationId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForNotification(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(notificationListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <NotificationListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(notificationListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, NotificationListParam param) {
    for (var page = startPage + 1;
        ref.exists(notificationListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(notificationListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(notificationListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(notificationListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(notificationListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<NotificationModel> items) {
    final updatesByPage = <(int, NotificationListParam), List<NotificationModel>>{};

    for (final item in items) {
      final entries = getEntriesForNotification(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageNotificationLimit / 2) {
        ref.invalidate(notificationListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(notificationListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class NotificationPaginationState extends _$NotificationPaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required NotificationListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(notificationListPaginationProvider(page: i, param: param));
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
