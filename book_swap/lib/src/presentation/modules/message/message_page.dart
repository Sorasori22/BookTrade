import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../features/trade_request/providers/my_trade_request_list_provider.dart';
import '../../../features/trade_request/trade_request_schema.dart';
import '../../app/app_style.dart';

@RoutePage()
class MessagePage extends ConsumerWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsRouter.tabBar(
      routes: [
        MessageListRoute(),
        TradeRequestListRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                AS.hGap16,
                TabBar(
                  dividerColor: context.bookTheme.dividerColor,
                  controller: tabController,
                  tabs: [
                    Tab(text: 'Messages'),
                    Tab(
                      child: Consumer(
                        builder: (context, ref, child) {
                          final tradeRequestCount = ref.watch(
                            myTradeRequestListProvider(status: TradeRequestStatus.pending)
                                .select((state) => state.valueOrNull?.length ?? 0),
                          );

                          return Text.rich(
                            TextSpan(
                              text: 'Trade Requests',
                              children: [
                                if (tradeRequestCount > 0)
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Badge.count(count: tradeRequestCount),
                                    ),
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Expanded(child: child),
              ],
            ),
          ),
        );
      },
    );
  }
}
