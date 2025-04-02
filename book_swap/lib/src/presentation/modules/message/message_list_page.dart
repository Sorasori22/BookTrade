import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/date_time_helper.dart';
import 'package:book_swap/src/features/chat/providers/chat_list_pagination_provider.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/user_avatar_widget.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:book_swap/src/presentation/widgets/feedback/my_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp_utils/riverpod_pagination_widgets.dart';

import '../../../features/chat/params/chat_list_param.dart';
import '../../app/app_style.dart';

final _paramProvider = Provider.autoDispose<ChatListParam>((ref) {
  return ChatListParam();
});

@RoutePage()
class MessageListPage extends ConsumerWidget {
  const MessageListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final param = ref.watch(_paramProvider);
          final firstPageCountAsync = ref.watch(
            chatListPaginationProvider(page: 0, param: param)
                .select((value) => value.whenData((value) => value.length)),
          );

          if (firstPageCountAsync.hasValue && firstPageCountAsync.requireValue == 0) {
            return const Center(child: Text('No messages'));
          }

          if (firstPageCountAsync.hasError) {
            return Center(child: MyErrorWidget(error: firstPageCountAsync.error));
          }

          return RiverpodPaginationListView(
            padding: const EdgeInsets.symmetric(vertical: AS.sidePadding, horizontal: 8),
            loading: firstPageCountAsync.isLoading && !firstPageCountAsync.isRefreshing,
            getData: (ref, index) => ref.watch(chatPaginatedAtIndexProvider(index, param: param)),
            loadingItemBuilder: (context, index) => const SizedBox.shrink(),
            itemBuilder: (index, data) {
              return ListTile(
                onTap: () {
                  context.pushRoute(
                    MessageRoomRoute(
                      recipientId: data.recipientId.value,
                      recipientName: data.recipientName,
                      recipientAvatar: data.recipientAvatarPath,
                    ),
                  );
                },
                leading: UserAvatar(
                  imageObject: data.recipientAvatarPath,
                ),
                title: Text(
                  data.recipientName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "${data.isSender ? 'You: ' : ''}${data.lastMessage}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(data.lastMessageTime.formatForChatList()),
                    AS.hGap4,
                    if (data.unreadCount > 0) Badge.count(count: data.unreadCount) else AS.hGap12,
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
