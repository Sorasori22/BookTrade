import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';

@RoutePage()
class TradeRequestListPage extends ConsumerWidget {
  const TradeRequestListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TradeRequestListPage'),
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
