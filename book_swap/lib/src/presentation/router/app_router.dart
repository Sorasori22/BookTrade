import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_router.gr.dart';
import 'app_router_guard.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends RootStackRouter {
  final Ref _ref;

  AppRouter(this._ref);

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: SplashRoute.page,
        path: '/loading',
        keepHistory: false,
      ),
      AutoRoute(
        page: AuthRoute.page,
        guards: [AuthedGuard(_ref)],
        path: '/auth',
        keepHistory: false,
      ),
      AutoRoute(
        page: RootRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/',
        children: [
          AutoRoute(page: HomeRoute.page, path: 'home'),
          AutoRoute(page: MessageRoute.page, path: 'message'),
          AutoRoute(page: BookRoute.page, path: 'book'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
        ],
      ),
    ];
  }
}
