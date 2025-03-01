import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class UserPage extends HookConsumerWidget {
  const UserPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoRouter();
  }
}
// TODO: Move this route definition to app_router.dart
// AutoRoute(
//   page: UserRoute.page,
//   path: 'users',
//   children: [
//     AutoRoute(page: UserListRoute.page, path: ''),
//     AutoRoute(page: UserCreateRoute.page, path: 'create'),
//     AutoRoute(page: UserDetailRoute.page, path: ':id'),
//     AutoRoute(page: UserUpdateRoute.page, path: ':id/update'),
//     RedirectRoute(path: '*', redirectTo: ''),
//   ],
// )
