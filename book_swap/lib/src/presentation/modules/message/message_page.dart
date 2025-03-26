import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
                      text: 'Trade Requests',
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
