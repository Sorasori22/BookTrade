import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';

@RoutePage()
class MessageListPage extends ConsumerWidget {
  const MessageListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MessageListPage'),
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
