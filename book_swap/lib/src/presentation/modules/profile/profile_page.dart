import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';
import '../../router/app_router.gr.dart';

@RoutePage()
class ProfileRootPage extends ConsumerWidget {
  const ProfileRootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AutoRouter();
  }
}

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          AS.wGap8,
          IconButton(
            onPressed: () {
              context.router.push(const MoreRoute());
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
