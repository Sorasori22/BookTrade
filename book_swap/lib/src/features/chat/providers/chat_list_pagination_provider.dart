import 'package:dartx/dartx.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/helpers/logger.dart';
import '../../message/message_schema.schema.dart';
import '../../profile/profile_schema.schema.dart';
import '../chat_schema.schema.dart';
import '../i_chat_repo.dart';
import '../params/chat_list_param.dart';

part 'chat_list_pagination_provider.g.dart';

const int _pageChatLimit = 25;

@riverpod
class ChatListPagination extends _$ChatListPagination with LoggerMixin {
  @override
  FutureOr<IList<ChatModel>> build({
    required int page,
    required ChatListParam param,
  }) async {
    _log('Building page $page with params: $param');

    ref.onDispose(() {
      _log('Disposing page $page');
      ChatPaginationTracker.instance.untrackPage(page, param);
    });

    const limit = _pageChatLimit;
    final offset = page * limit;

    try {
      await Future.delayed(const Duration(milliseconds: 250));
      final result = await ref
          .watch(chatRepoProvider)
          .findPagination(limit: limit, offset: offset, param: param);

      return result.fold(
        (error) {
          _log('Error loading page $page: $error');
          return result.getOrThrow();
        },
        (items) {
          ref.cacheTime(const Duration(minutes: 5));

          ChatPaginationTracker.instance.trackMultipleChats(
            items.map((e) => e.messageId).toList(),
            page,
            param,
          );

          _log('Loaded ${items.length} chats for page $page');
          return items;
        },
      );
    } catch (e) {
      _log('Unexpected error loading page $page: $e');
      throw Exception('Failed to load chats: $e');
    }
  }

  void _log(String message) {
    logDebug('[ChatListPagination] $message');
  }

  void _updateItem(ChatModel item) {
    state =
        state.whenData((value) => value.updateById([item], (e) => e.messageId == item.messageId));
  }

  void _addItem(ChatModel item) {
    state = state.whenData((value) => value.add(item));
  }

  void _removeItem(MessageId id) {
    state = state.whenData((value) => value.removeWhere((e) => e.messageId == id));
  }

  void _removeAt(int index) {
    state = state.whenData((value) => value.removeAt(index));
  }
}

@riverpod
PaginatedItem<ChatModel>? chatPaginatedAtIndex(
  Ref ref,
  int index, {
  required ChatListParam param,
}) {
  const limit = _pageChatLimit;
  final page = index ~/ limit;
  final pageItems = ref.watch(chatListPaginationProvider(page: page, param: param));
  final hasNextPage = ref.exists(chatListPaginationProvider(page: page + 1, param: param));
  return PaginatedItem.build(
    pageItems: pageItems,
    limit: limit,
    index: index,
    showLoadingInAllItem: hasNextPage,
  );
}

/// Tracks paginated items, we can't use with add, because it might has issue with param filter
class ChatPaginationTracker {
  static final ChatPaginationTracker instance = ChatPaginationTracker._();
  ChatPaginationTracker._();

  final _items = <MessageId, Set<(int page, ChatListParam param)>>{};

  void clearUnreadCount(Ref ref, ProfileId recipientId) {
    for (final messageId in _items.keys) {
      final entries = _items[messageId]!;

      // Check first entry to see if this chat contains the recipient
      final firstEntry = entries.firstOrNull;
      if (firstEntry == null) continue;

      final chatState = ref.read(
        chatListPaginationProvider(page: firstEntry.$1, param: firstEntry.$2),
      );

      final chat = chatState.valueOrNull?.firstOrNullWhere(
        (chat) => chat.messageId == messageId,
      );

      if (chat != null && chat.recipientId == recipientId) {
        // Update the chat with unread count cleared
        final updatedChat = chat.copyWith(unreadCount: 0);
        updatePaginatedItem(ref, updatedChat);
      }
    }
  }

  void trackChat(MessageId id, int page, ChatListParam param) {
    _items.putIfAbsent(id, () => {}).add((page, param));
  }

  void trackMultipleChats(List<MessageId> ids, int page, ChatListParam param) {
    for (final id in ids) {
      trackChat(id, page, param);
    }
  }

  void untrackPage(int page, ChatListParam param) {
    for (final entries in _items.values) {
      entries.remove((page, param));
    }
    _items.removeWhere((_, entries) => entries.isEmpty);
  }

  List<(int page, ChatListParam param)> getEntriesForChat(MessageId id) {
    return _items[id]?.toList() ?? [];
  }

  void clear() {
    _items.clear();
  }

  void invalidateVisibleItems(Ref ref, {required ChatListParam param, int visibleItemCount = 50}) {
    final visiblePages = (visibleItemCount / _pageChatLimit).ceil();

    for (int page = 0; page < visiblePages; page++) {
      if (ref.exists(chatListPaginationProvider(page: page, param: param))) {
        ref.invalidate(chatListPaginationProvider(page: page, param: param));
      }
    }
  }

  void updatePaginatedItem(Ref ref, ChatModel item) {
    for (final entry in getEntriesForChat(item.messageId)) {
      ref
          .read(chatListPaginationProvider(page: entry.$1, param: entry.$2).notifier)
          ._updateItem(item);
    }
  }

  void deletePaginatedItem(Ref ref, MessageId id, {int invalidateOnLength = 1}) {
    final entries = getEntriesForChat(id);
    if (entries.isEmpty) return;

    if (entries.length == invalidateOnLength) {
      ref.invalidate(chatListPaginationProvider);
      return;
    }

    final sortedEntries = entries.toList()..sort((a, b) => a.$1.compareTo(b.$1));

    final entriesByParam = <ChatListParam, List<int>>{};
    for (final entry in sortedEntries) {
      entriesByParam.putIfAbsent(entry.$2, () => []).add(entry.$1);
    }

    for (final param in entriesByParam.keys) {
      final pages = entriesByParam[param]!..sort();

      for (final page in pages) {
        ref.read(chatListPaginationProvider(page: page, param: param).notifier)._removeItem(id);
      }

      final highestPage = pages.last;

      _shiftItemsAfterDeletion(ref, highestPage, param);
    }
  }

  void _shiftItemsAfterDeletion(Ref ref, int startPage, ChatListParam param) {
    for (var page = startPage + 1;
        ref.exists(chatListPaginationProvider(page: page, param: param));
        page++) {
      final nextPageItems =
          ref.read(chatListPaginationProvider(page: page, param: param)).valueOrNull;

      if (nextPageItems == null || nextPageItems.isEmpty) break;

      final firstItem = nextPageItems.first;
      ref.read(chatListPaginationProvider(page: page, param: param).notifier)._removeAt(0);

      if (ref.exists(chatListPaginationProvider(page: page - 1, param: param))) {
        ref
            .read(chatListPaginationProvider(page: page - 1, param: param).notifier)
            ._addItem(firstItem);
      }

      if (nextPageItems.length <= 1) break;
    }
  }

  void updateMultiplePaginatedItems(Ref ref, List<ChatModel> items) {
    final updatesByPage = <(int, ChatListParam), List<ChatModel>>{};

    for (final item in items) {
      final entries = getEntriesForChat(item.messageId);
      for (final entry in entries) {
        updatesByPage.putIfAbsent(entry, () => []).add(item);
      }
    }

    for (final entry in updatesByPage.entries) {
      final (page, param) = entry.key;
      final updates = entry.value;

      if (updates.length > _pageChatLimit / 2) {
        ref.invalidate(chatListPaginationProvider(page: page, param: param));
      } else {
        for (final item in updates) {
          ref.read(chatListPaginationProvider(page: page, param: param).notifier)._updateItem(item);
        }
      }
    }
  }
}

@riverpod
class ChatPaginationState extends _$ChatPaginationState {
  @override
  ({bool isLoading, int totalPages, int currentPage}) build({required ChatListParam param}) {
    bool isLoading = false;
    int highestLoadedPage = 0;

    for (int i = 0; i < 10; i++) {
      final pageState = ref.watch(chatListPaginationProvider(page: i, param: param));
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
