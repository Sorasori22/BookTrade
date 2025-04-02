import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/core/helpers/date_time_helper.dart';
import 'package:book_swap/src/features/trade_request/providers/my_trade_request_list_provider.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/user_avatar_widget.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/feedback/app_snackbar.dart';
import 'package:book_swap/src/presentation/widgets/feedback/async_value_widget.dart';
import 'package:book_swap/src/presentation/widgets/layouts/app_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

import '../../../features/trade_request/providers/trade_request_accept_provider.dart';
import '../../../features/trade_request/trade_request_schema.schema.dart';
import '../../router/app_router.gr.dart';

@RoutePage()
class TradeRequestListPage extends ConsumerWidget {
  const TradeRequestListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listAsync = ref.watch(myTradeRequestListProvider(status: TradeRequestStatus.pending));

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AS.hGap16,
          Padding(
            padding: Pad(horizontal: AS.sidePadding),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.filter_alt_outlined, size: 18),
                  Text('FILTER'),
                ],
              ),
            ),
          ),
          Expanded(
            child: listAsync.onData((items) {
              if (items.isEmpty) {
                return const Center(
                  child: Text('No trade requests'),
                );
              }

              return RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(myTradeRequestListProvider);
                },
                child: ListView.separated(
                  itemCount: items.length,
                  padding: Pad(vertical: AS.sidePadding, horizontal: AS.sidePadding),
                  separatorBuilder: (context, index) => AS.hGap16,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return _Item(item: item);
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _Item extends ConsumerWidget {
  const _Item({super.key, required this.item});

  final TradeRequestModel item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppCard(
      padding: Pad(horizontal: AS.sidePadding, top: AS.sidePadding, bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAvatar(
            imageObject: item.requester.avatar,
            size: 80,
          ),
          AS.wGap16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.requester.fullname ?? item.requester.username,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Joined: ${item.requester.createdAt.format()}"),
                Text("Book: ${item.book.title}"),
                AppButton(
                  onPressed: () async {
                    final result = await context.loadingWrapper(() async {
                      return await ref.read(tradeRequestAcceptProvider(item.id).notifier).call();
                    });

                    if (result.isSuccess) {
                      if (context.mounted) {
                        context.showSuccessSnackbar('Trade request accepted');
                        context.navigateTo(
                          MessageRoomRoute(
                            recipientId: item.requester.id.value,
                            recipientName: item.requester.fullname ?? item.requester.username,
                            recipientAvatar: item.requester.avatar,
                          ),
                        );
                      }
                    }

                    if (result.isFailure && context.mounted) {
                      context.showErrorSnackbar(result.failure!.message());
                    }
                  },
                  fullWidth: true,
                  size: AppButtonSize.small,
                  borderRadius: AS.radiusS,
                  label: 'Accept',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
