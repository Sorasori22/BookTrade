import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/current_user_avatar.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: false,
        actions: [
          SizedBox(
            width: 40,
            child: CurrentUserAvatar(),
          ),
          AS.wGap16,
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
        child: Column(
          children: [
            AS.hGap16,
            InkWell(
              onTap: () {
                context.navigateTo(BookRoute(children: [SearchRoute(autoFocus: true)]));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AS.sidePadding),
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AS.radiusS),
                  color: context.bookTheme.dividerColor.withValues(alpha: 0.6),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    AS.wGap12,
                    Text(
                      'Search',
                      style: context.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
