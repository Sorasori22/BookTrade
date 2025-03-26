import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/features/chat/providers/chat_clear_unread_count_provider.dart';
import 'package:book_swap/src/features/message/providers/message_list_pagination_provider.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/profile/providers/profile_detail_provider.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/user_avatar_widget.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/feedback/app_snackbar.dart';
import 'package:book_swap/src/presentation/widgets/feedback/async_value_widget.dart';
import 'package:book_swap/src/presentation/widgets/layouts/app_card.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/supabase_provider.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../features/message/message_schema.schema.dart';
import '../../../features/message/params/message_list_param.dart';
import '../../../features/message/providers/message_send_text_provider.dart';
import '../../app/app_style.dart';

@RoutePage()
class MessageRoomPage extends ConsumerStatefulWidget {
  const MessageRoomPage({
    super.key,
    required this.recipientId,
    this.recipientName,
    this.recipientAvatar,
  });

  final String recipientId;
  final String? recipientName;
  final ImageObject? recipientAvatar;

  @override
  ConsumerState<MessageRoomPage> createState() => _MessageRoomPageState();
}

class _MessageRoomPageState extends ConsumerState<MessageRoomPage> {
  late final ProfileId _recipientId;
  late String _recipientName;
  late ImageObject? _recipientAvatar;
  RealtimeChannel? _channel;

  @override
  void initState() {
    super.initState();
    _recipientId = ProfileId.fromValue(widget.recipientId);
    _recipientName = widget.recipientName ?? 'Message';
    _recipientAvatar = widget.recipientAvatar;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _clearUnreadCount();
      _loadUserInfo();
      _listenRealtimeMessages();
    });
  }

  @override
  void dispose() {
    _channel?.unsubscribe();
    super.dispose();
  }

  String _getChannelId() {
    return [
      ref.read(currentProfileIdProvider)!.value,
      _recipientId.value,
    ].sorted().join(':');
  }

  void _sendMessage(MessageModel message) {
    _channel?.sendBroadcastMessage(event: 'message', payload: message.toJson());
  }

  void _listenRealtimeMessages() {
    final supabase = ref.read(supabaseProvider).client;
    _channel = supabase.channel('message-${_getChannelId()}');
    _channel!
        .onBroadcast(
          event: 'message',
          callback: (payload) {
            final message = MessageModel.fromJson(payload['data'] as Map<String, dynamic>);
            MessagePaginationTracker.instance.addItem(ref, message);
          },
        )
        .subscribe();
  }

  Future<void> _clearUnreadCount() async {
    ref.read(chatClearUnreadCountProvider(_recipientId).notifier).call();
  }

  Future<void> _loadUserInfo() async {
    try {
      final result = await ref.read(profileDetailProvider(_recipientId).future);
      _recipientName = result.fullname ?? result.username;
      _recipientAvatar = result.avatar;
    } on Failure catch (e) {
      if (context.mounted) {
        context.showErrorSnackbar(e.message());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_recipientName),
        actions: [
          InkWell(
            customBorder: const CircleBorder(),
            onTap: () {},
            child: UserAvatar(
              size: 32,
              imageObject: _recipientAvatar,
            ),
          ),
          AS.wGap12,
        ],
      ),
      body: Column(
        children: [
          Expanded(child: _MessageList()),
          _MessageInput(recipientId: _recipientId, onSend: _sendMessage),
        ],
      ),
    );
  }
}

class _MessageInput extends HookConsumerWidget {
  const _MessageInput({
    super.key,
    required this.recipientId,
    required this.onSend,
  });

  final ProfileId recipientId;
  final void Function(MessageModel message) onSend;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();
    final hasText = useState(false);
    final sendTextState = ref.watch(messageSendTextProvider(recipientId));

    return Column(
      children: [
        AppCard(
          margin: Pad(horizontal: 12),
          padding: Pad(horizontal: 12, bottom: 4),
          child: Column(
            children: [
              TextField(
                controller: textController,
                onChanged: (value) {
                  hasText.value = value.isNotBlank;
                },
                decoration: InputDecoration(
                  hintText: 'Type your message here...',
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              Row(
                children: [
                  Spacer(),
                  AppButton(
                    size: AppButtonSize.small,
                    borderRadius: AS.radiusS,
                    disabled: sendTextState.isInProgress,
                    onPressed: () async {
                      ref
                          .read(messageSendTextProvider(recipientId).notifier)
                          .call(content: textController.text)
                          .then((result) {
                        if (result.isSuccess) {
                          onSend(result.successOrNull!);
                          MessagePaginationTracker.instance.addItem(ref, result.successOrNull!);
                        }
                      });
                      textController.clear();
                      hasText.value = false;
                    },
                    label: 'Send Now',
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.paddingOf(context).bottom,
        ),
      ],
    );
  }
}

class _SendingMessages extends ConsumerWidget {
  const _SendingMessages({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}

class _MessageList extends HookConsumerWidget {
  const _MessageList({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final profileId = ref.watch(currentProfileIdProvider)!;
    final param = MessageListParam(participantId: profileId);
    final firstPageAsync = ref.watch(
      messageListPaginationProvider(page: 0, param: param).select((value) {
        return value.whenData((value) => 1);
      }),
    );

    return firstPageAsync.onData((_) {
      return RiverpodPaginationListView(
        padding: Pad(all: AS.sidePadding),
        getData: (ref, index) {
          return ref.watch(messagePaginatedAtIndexProvider(index, param: param));
        },
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        reverse: true,
        loadingItemBuilder: (context, index) => Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(),
            child: Text('Loading more messages...'),
          ),
        ),
        itemBuilder: (index, data) {
          return _MessageItem(message: data);
        },
        externalItems: {
          0: (context) => const _SendingMessages(),
        },
      );
    });
  }
}

class _MessageItem extends ConsumerWidget {
  const _MessageItem({
    super.key,
    required this.message,
  });

  final MessageModel message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSender = message.senderId == ref.watch(currentProfileIdProvider)!;

    return Row(
      mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isSender) ...[
          UserAvatar(
            size: 24,
            imageObject: message.recipient.avatar,
          ),
          AS.wGap8,
        ],
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                color: isSender ? context.primaryColor : Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12),
              child: Text(
                message.content,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: isSender ? Colors.white : Colors.black,
                ),
              ),
            ),
            if (message.tradeRequestId != null) ...[
              AppButton(
                size: AppButtonSize.small,
                borderRadius: AS.radiusS,
                onPressed: () {},
                label: 'View Trade Request',
              ),
            ],
          ],
        ),
      ],
    );
  }
}
