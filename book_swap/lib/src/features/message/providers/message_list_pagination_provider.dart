import 'package:book_swap/src/core/helpers/logger.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i_message_repo.dart';
import '../message_schema.schema.dart';
import '../params/message_list_param.dart';

part 'message_list_pagination_provider.g.dart';

const int _pageMessageLimit = 25;

@riverpod
class MessageListPagination extends _$MessageListPagination with LoggerMixin {
  @override
  FutureOr<IList<MessageModel>> build({
    required int page,
    required MessageListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      MessagePaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageMessageLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(messageRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (list) {
          ref.cacheTime(const Duration(minutes: 5));

          MessagePaginationTracker.instance.trackMultipleMessages(
            list.map((e) => e.id).toList(),
            page,
            param,
          );

          _log('Loaded ${list.length} messages for page $page');
          return list;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load messages: $e');
    }
  }

  void _log(String message) {
    logDebug('[MessageListPagination] $message');
  }

  void _updateItem(MessageModel item) {
    state = state.whenData((value) => value.updateById([item], (e) => e.id == item.id));
  }

  void _addItem(MessageModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(MessageId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.id == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }

  void _insertItem(int index, MessageModel item) {
    state = state.whenData((value) => value.insert(index, item));
  }
}

@riverpod
PaginatedItem<MessageModel>? messagePaginatedAtIndex(
  Ref ref,
  int index, {
  required MessageListParam param,
}) {
  const limit = _pageMessageLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(messageListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(messageListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class MessagePaginationTracker {
  static final MessagePaginationTracker instance = MessagePaginationTracker._();
  MessagePaginationTracker._();

  final _items = <MessageId, Set<(int page, MessageListParam param)>>{};

  void trackMessage(MessageId id, int page, MessageListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleMessages(List<MessageId> ids, int page, MessageListParam param) {
    for (final id in ids) {
      trackMessage(id, page, param);
    }
  }

  void untrackPage(int page, MessageListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, MessageListParam param)> getEntriesForMessage(MessageId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(
    Ref ref, {
    required MessageListParam param,
    int visibleItemCount = 50,
  }) {
    final visiblePages = (visibleItemCount / _pageMessageLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(messageListPaginationProvider(page: page, param: param))) {
        ref.invalidate(messageListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, MessageModel item) {
    for (final entry in getEntriesForMessage(item.id)) {
      ref
          .read(messageListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  /// Add item to first page, then shift items to the right
  void addItem(WidgetRef ref, MessageModel item) {
    // Track the item in the first page for each unique param that has loaded pages
    final uniqueParams = <MessageListParam>{};
    for (var page = 0; page < 10; page++) {
      for (final entry in _items.values.expand((e) => e)) {
        if (entry.$1 == page) uniqueParams.add(entry.$2);
      }
    }

    // Track the item in first page for each param
    for (final param in uniqueParams) {
      trackMessage(item.id, 0, param);
    }

    final entries = getEntriesForMessage(item.id);
    if (entries.isEmpty) return;

    final entriesByParam = <MessageListParam, List<int>>{};
    for (final entry in entries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();
      final firstPage = pages.first;

      // Add item to first page
      ref
          .read(messageListPaginationProvider(page: firstPage, param: param).notifier)
          ._insertItem(0, item);

      // Shift items to maintain page size
      for (var page = firstPage;
          ref.exists(messageListPaginationProvider(page: page, param: param));
          page++) {
        final currentPageItems =
            ref.read(messageListPaginationProvider(page: page, param: param)).valueOrNull;
        if (currentPageItems == null || currentPageItems.length <= _pageMessageLimit) break;

        // Move last item to next page
        final lastItem = currentPageItems.last;
        ref
            .read(messageListPaginationProvider(page: page, param: param).notifier)
            ._removeAt(currentPageItems.length - 1);

        if (ref.exists(messageListPaginationProvider(page: page + 1, param: param))) {
          ref
              .read(messageListPaginationProvider(page: page + 1, param: param).notifier)
              ._insertItem(0, lastItem);
        }
      }
    }
  }

  void deletePaginatedItem(Ref ref, MessageId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForMessage(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(messageListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <MessageListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(messageListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, MessageListParam param) {
    for (var page = startPage + 1;
        ref.exists(messageListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(messageListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(messageListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(messageListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(messageListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<MessageModel> items) {
    final updatesByPage = <(int, MessageListParam), List<MessageModel>>{};

    for (final item in items) {
      final entries = getEntriesForMessage(item.id);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageMessageLimit / 2) {
        ref.invalidate(messageListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref
              .read(messageListPaginationProvider(page: page, param: param).notifier)
              ._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class MessagePaginationState extends _$MessagePaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required MessageListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(messageListPaginationProvider(page: i, param: param));
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
