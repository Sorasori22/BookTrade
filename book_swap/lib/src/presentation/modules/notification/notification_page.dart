import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/core/helpers/date_time_helper.dart';
import 'package:book_swap/src/features/notification/notification_schema.dart';
import 'package:book_swap/src/features/notification/notification_schema.schema.dart';
import 'package:book_swap/src/features/notification/params/notification_list_param.dart';
import 'package:book_swap/src/features/notification/providers/notification_list_pagination_provider.dart';
import 'package:book_swap/src/features/profile/profile_schema.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_cover.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/feedback/async_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../../core/account/current_account_provider.dart';
import '../../../features/notification/providers/notification_clear_all_unread_provider.dart';
import '../../../features/trade_request/trade_request_schema.dart';
import '../../app/app_style.dart';

@RoutePage()
class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({super.key});

  @override
  ConsumerState<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _clearOnesignalNotifications();
    });
  }

  void _clearOnesignalNotifications() {
    OneSignal.Notifications.removeGroupedNotifications('non_message_notification');
  }

  @override
  Widget build(BuildContext context) {
    final profileId = ref.watch(currentProfileIdProvider);
    if (profileId == null) {
      return const SizedBox.shrink();
    }
    final param = NotificationListParam(userId: profileId);
    final firstPageCountAsync = ref.watch(
      notificationListPaginationProvider(page: 0, param: param).select((value) {
        return value.whenData((value) => value.length);
      }),
    );

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        Future.microtask(() {
          ref.read(notificationClearAllUnreadProvider.notifier).call();
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
        body: Padding(
          padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
          child: firstPageCountAsync.onData((count) {
            if (count == 0) {
              return Center(
                child: Text(
                  'No notifications yet...',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colors.onSurfaceVariant,
                  ),
                ),
              );
            }

            return RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(notificationListPaginationProvider);
              },
              child: RiverpodPaginationListView(
                getData: (ref, index) {
                  return ref.watch(notificationPaginatedAtIndexProvider(index, param: param));
                },
                loadingItemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Loading more notifications...',
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                itemBuilder: (index, data) {
                  return _Item(index: index, data: data);
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}

class _Item extends ConsumerWidget {
  const _Item({super.key, required this.index, required this.data});

  final int index;
  final NotificationModel data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (index > 0) Divider(),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: context.bookTheme.dividerColor.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(AS.radiusS),
                  ),
                  child: Center(
                    child: Icon(
                      !data.read
                          ? Icons.notifications_active_outlined
                          : Icons.notifications_outlined,
                      color: data.read ? context.colors.onSurfaceVariant : context.colors.primary,
                    ),
                  ),
                ),
                AS.wGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              data.type.displayText(),
                              style: context.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          AS.wGap8,
                          Text(
                            data.createdAt.toTimeAgo(),
                            style: context.textTheme.bodySmall?.copyWith(
                              color: context.colors.onSurface.withValues(alpha: 0.6),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        data.content,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: context.colors.onSurface.withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (data.type == NotificationType.tradeRequest && data.tradeRequest != null) ...[
          AS.hGap12,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: BookCover(cover: data.tradeRequest!.book.image),
                ),
                AS.wGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.tradeRequest!.book.title,
                        style: context.textTheme.bodyLarge,
                      ),
                      Text(
                        "${data.tradeRequest!.requester.displayName} created a swap request for your book",
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: context.colors.onSurface.withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (data.tradeRequest!.status == TradeRequestStatus.pending) ...[
            AS.hGap12,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton(
                  onPressed: () {
                    context.navigateTo(TradeRequestListRoute());
                  },
                  label: 'View Swap',
                ),
                if (data.tradeRequest!.status == TradeRequestStatus.pending)
                  AppButton(
                    onPressed: () {},
                    label: 'Decline',
                    variant: AppButtonVariant.neutral,
                    backgroundColor: Colors.transparent,
                  ),
              ],
            ),
          ],
        ],
      ],
    );
  }
}
