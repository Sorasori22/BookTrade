import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/features/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: TextButton(
        onPressed: () {
          ref.read(signOutProvider.notifier).call();
        },
        child: Text('Sign out'),
      ),
    );
  }
}
