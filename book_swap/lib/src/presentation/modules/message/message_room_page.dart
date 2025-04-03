import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/chat/providers/chat_clear_unread_count_provider.dart';
import 'package:book_swap/src/features/chat/providers/chat_list_pagination_provider.dart';
import 'package:book_swap/src/features/message/providers/message_list_pagination_provider.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/profile/providers/profile_detail_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_confirm_offer_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_update_offered_book_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_update_status_provider.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.dart';
import 'package:book_swap/src/presentation/modules/book/picker/book_list_picker_bottom_sheet.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_cover.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/user_avatar_widget.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/dialogs/app_dialog.dart';
import 'package:book_swap/src/presentation/widgets/feedback/app_snackbar.dart';
import 'package:book_swap/src/presentation/widgets/feedback/async_value_widget.dart';
import 'package:book_swap/src/presentation/widgets/layouts/app_card.dart';
import 'package:dartx/dartx.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/supabase_provider.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../features/message/message_schema.dart';
import '../../../features/message/message_schema.schema.dart';
import '../../../features/message/params/message_list_param.dart';
import '../../../features/message/providers/message_send_text_provider.dart';
import '../../app/app_style.dart';
import '../../widgets/components/label_text.dart';
import '../user_rating/rating_create_dialog.dart';

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
      // To make sure mistake on the realtime, we need to refresh the message
      ref.invalidate(messageListPaginationProvider);

      _loadUserInfo();
      _listenRealtimeMessages();
      _clearOnesignalNotifications();
    });
  }

  void _clearOnesignalNotifications() {
    OneSignal.Notifications.removeGroupedNotifications('chat_${_recipientId.value}');
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
    // create object_type to avoid issue of override type key from supabase
    _channel?.sendBroadcastMessage(
      event: 'message',
      payload: message.toJson()..addAll({'object_type': message.type.name}),
    );
  }

  void _listenRealtimeMessages() {
    final supabase = ref.read(supabaseProvider).client;
    _channel = supabase.channel('message-${_getChannelId()}');
    _channel!
        .onBroadcast(
          event: 'message',
          callback: (payload) {
            final message = MessageModel.fromJson(
              payload..update('type', (_) => payload['object_type']),
            );
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
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        _clearUnreadCount();
        ref.invalidate(chatListPaginationProvider);
      },
      child: Scaffold(
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
          if (data.type == MessageType.tradeConfirmed) {
            return _ConfirmTradeItem(message: data);
          }

          return _MessageItem(message: data);
        },
        externalItems: {
          0: (context) => const _SendingMessages(),
        },
      );
    });
  }
}

class _ConfirmTradeItem extends ConsumerWidget {
  const _ConfirmTradeItem({
    super.key,
    required this.message,
  });

  final MessageModel message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRequester = message.tradeRequest?.requesterId == ref.watch(currentProfileIdProvider)!;
    final tradeRequestId = message.tradeRequest!.id;

    return AppCard(
      padding: Pad(all: 16).copyWith(top: 12),
      margin: Pad(all: 16).copyWith(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Trade Confirmed',
                  style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              if (message.tradeRequest?.status != TradeRequestStatus.completed)
                DottedBorder(
                  color: context.colors.primary,
                  padding: Pad(horizontal: 4, vertical: 2),
                  radius: Radius.circular(4),
                  borderType: BorderType.RRect,
                  child: Text(
                    'In Progress',
                    style: TextStyle(
                      fontSize: 9,
                    ),
                  ),
                )
              else
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: 0.2),
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: Pad(horizontal: 4, vertical: 2),
                  child: Text(
                    'Completed',
                    style: TextStyle(
                      fontSize: 9,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
          AS.hGap4,
          Text(
            'Great! Both parties have agreed to trade. Please arrange a meeting time and place to exchange the books. Once the swap is completed, you can mark this trade as "Completed".',
          ),
          AS.hGap16,
          DottedLine(),
          AS.hGap16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                child: _BookCover(
                  bookId: message.tradeRequest!.book.id,
                  cover: message.tradeRequest?.book.image,
                ),
              ),
              AS.wGap8,
              Icon(Icons.swap_horiz),
              AS.wGap8,
              SizedBox(
                width: 100,
                child: _BookCover(
                  bookId: message.tradeRequest!.offeredBookId!,
                  cover: message.tradeRequest?.offeredBook?.image,
                ),
              ),
            ],
          ),
          if (isRequester && message.tradeRequest?.status != TradeRequestStatus.completed) ...[
            AS.hGap20,
            Align(
              alignment: Alignment.centerRight,
              child: AppButton(
                fullWidth: true,
                borderRadius: AS.radiusS,
                variant: AppButtonVariant.primary,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AppDialog(
                      title: 'Confirm Trade',
                      message: 'Are you sure you want to mark this trade as completed?',
                      actions: [
                        AppButton(
                          label: 'Cancel',
                          variant: AppButtonVariant.outline,
                          onPressed: () => context.maybePop(),
                        ),
                        AppButton(
                          label: 'Confirm',
                          onPressed: () async {
                            context.maybePop();
                            await context.loadingWrapper(() async {
                              final id = message.tradeRequest!.id;
                              return await ref
                                  .read(tradeRequestUpdateStatusProvider(id).notifier)
                                  .call(status: TradeRequestStatus.completed);
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
                label: 'Mark as Completed',
              ),
            ),
          ],
          if (message.tradeRequest?.status == TradeRequestStatus.completed) ...[
            AS.hGap20,
            Align(
              alignment: Alignment.center,
              child: AppButton(
                fullWidth: true,
                onPressed: () {
                  final isRequester =
                      message.tradeRequest?.requesterId == ref.watch(currentProfileIdProvider)!;
                  RatingCreateDialog.show(
                    context,
                    ratedProfileId: isRequester
                        ? message.tradeRequest!.book.ownerId
                        : message.tradeRequest!.requesterId,
                    tradeRequestId: message.tradeRequest!.id,
                  );
                },
                label: 'Leave Review',
                variant: AppButtonVariant.outline,
                borderRadius: AS.radiusS,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _BookCover extends ConsumerWidget {
  const _BookCover({
    super.key,
    required this.bookId,
    required this.cover,
    this.size = 80,
    this.navigateToBookDetail = true,
  });

  final BookId bookId;
  final ImageObject? cover;
  final double size;
  final bool navigateToBookDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: navigateToBookDetail
          ? () {
              context.pushRoute(
                BookDetailRoute(
                  hideSwapButton: true,
                  bookIdString: bookId.value.toString(),
                ),
              );
            }
          : null,
      child: SizedBox(
        width: size,
        child: BookCover(cover: cover, borderRadius: AS.radiusS),
      ),
    );
  }
}

class _MessageItem extends ConsumerStatefulWidget {
  const _MessageItem({
    super.key,
    required this.message,
  });

  final MessageModel message;

  @override
  ConsumerState<_MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends ConsumerState<_MessageItem> {
  @override
  Widget build(BuildContext context) {
    final isSender = widget.message.senderId == ref.watch(currentProfileIdProvider)!;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isSender) ...[
          Container(
            margin: EdgeInsets.only(top: 18),
            child: UserAvatar(
              size: 24,
              imageObject: widget.message.recipient.avatar,
            ),
          ),
          AS.wGap8,
        ],
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: context.screenWidth * 0.7),
              margin: EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: isSender ? context.primaryColor : Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12),
              child: Text(
                widget.message.content,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: isSender ? Colors.white : Colors.black,
                ),
              ),
            ),
            if (widget.message.tradeRequestId != null &&
                widget.message.type == MessageType.requestStarted) ...[
              AS.hGap8,
              _buildToTradeBookCard(),
            ],
            if (widget.message.tradeRequest != null &&
                widget.message.type == MessageType.offeredBook &&
                widget.message.tradeRequest?.offeredBookId != null) ...[
              AS.hGap8,
              _buildOffered(),
              if (!isSender &&
                  widget.message.tradeRequest?.status != TradeRequestStatus.confirmed) ...[
                AppButton(
                  label: 'Accept Offer',
                  size: AppButtonSize.small,
                  borderRadius: AS.radiusS,
                  variant: AppButtonVariant.outline,
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AppDialog(
                          title: 'Confirm Trade',
                          message:
                              'Are you sure you want to ${widget.message.tradeRequest?.status == TradeRequestStatus.confirmed ? 'decline' : 'accept'} this offer?',
                          actions: [
                            AppButton(
                              label: 'Cancel',
                              variant: AppButtonVariant.outline,
                              onPressed: () => context.maybePop(),
                            ),
                            AppButton(
                              label: 'Confirm',
                              onPressed: () {
                                context.loadingWrapper(() async {
                                  final id = widget.message.tradeRequest!.id;
                                  return await ref
                                      .read(tradeRequestConfirmOfferProvider(id).notifier)
                                      .call();
                                });
                                context.maybePop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
              if (isSender &&
                  widget.message.tradeRequest?.status == TradeRequestStatus.accepted) ...[
                AppButton(
                  label: 'Change Offer',
                  size: AppButtonSize.small,
                  borderRadius: AS.radiusS,
                  variant: AppButtonVariant.outline,
                  onPressed: () {
                    _pickerOfferBook(context);
                  },
                ),
              ],
            ],
            if (widget.message.tradeRequestId != null &&
                isSender &&
                widget.message.tradeRequest?.offeredBookId == null &&
                widget.message.type == MessageType.requestStarted) ...[
              AppButton(
                size: AppButtonSize.small,
                borderRadius: AS.radiusS,
                variant: AppButtonVariant.outline,
                foregroundColor: context.colors.error,
                onPressed: () {
                  _pickerOfferBook(context);
                },
                label: 'Click here to select your offer',
              ),
            ],
          ],
        ),
      ],
    );
  }

  Future<void> _pickerOfferBook(BuildContext context) async {
    final result = await BookListPickerBottomSheet.show(
      context,
      selectedId: widget.message.tradeRequest?.offeredBookId,
    );
    if (result != null && context.mounted) {
      context.loadingWrapper(() async {
        return await ref
            .read(
              tradeRequestUpdateOfferedBookProvider(
                widget.message.tradeRequest!.id,
              ).notifier,
            )
            .call(offeredBookId: result.id);
      });
    }
  }

  AppCard _buildOffered() {
    return AppCard(
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: _BookCover(
              bookId: widget.message.tradeRequest!.offeredBookId!,
              cover: widget.message.tradeRequest?.offeredBook?.image,
            ),
          ),
          AS.wGap12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelText(
                label: 'Title',
                text: widget.message.tradeRequest?.offeredBook?.title ?? 'Unknown',
              ),
              AS.hGap4,
              LabelText(
                label: 'Author',
                text: widget.message.tradeRequest?.offeredBook?.author ?? 'Unknown',
              ),
              AS.hGap4,
              LabelText(
                label: 'Rating',
                text: widget.message.tradeRequest?.offeredBook?.averageRating == null
                    ? 'No rating'
                    : '${widget.message.tradeRequest?.offeredBook?.averageRating}/5',
              ),
              AS.hGap8,
              Row(
                children: [
                  Icon(Icons.arrow_right_alt_outlined),
                  AS.wGap12,
                  SizedBox(
                    width: 28,
                    child: _BookCover(
                      bookId: widget.message.tradeRequest!.book.id,
                      cover: widget.message.tradeRequest?.book.image,
                      navigateToBookDetail: false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppCard _buildToTradeBookCard() {
    return AppCard(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: _BookCover(
              bookId: widget.message.tradeRequest!.book.id,
              cover: widget.message.tradeRequest?.book.image,
              navigateToBookDetail: false,
            ),
          ),
          AS.wGap12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelText(
                label: 'Title',
                text: widget.message.tradeRequest?.book.title ?? 'Unknown',
                textStyle: TextStyle(fontSize: 18),
              ),
              AS.hGap4,
              LabelText(
                label: 'Author',
                text: widget.message.tradeRequest?.book.author ?? 'Unknown',
              ),
              AS.hGap8,
              LabelText(
                label: 'Rating',
                text: widget.message.tradeRequest?.book.averageRating == null
                    ? 'No rating'
                    : '${widget.message.tradeRequest?.book.averageRating}/5',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
