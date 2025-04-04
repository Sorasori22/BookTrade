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
          AutoRoute(
            page: MessageRoute.page,
            path: 'messages',
            children: [
              AutoRoute(
                page: MessageListRoute.page,
                path: '',
              ),
              AutoRoute(
                page: TradeRequestListRoute.page,
                path: 'trade-requests',
              ),
            ],
          ),
          AutoRoute(
            page: BookRoute.page,
            path: 'book',
            maintainState: false,
            children: [
              AutoRoute(
                page: SearchRoute.page,
                path: 'search',
                initial: true,
                maintainState: false,
              ),
            ],
          ),
          AutoRoute(
            page: ProfileRootRoute.page,
            path: 'profile',
            children: [
              AutoRoute(page: ProfileRoute.page, path: ''),
              AutoRoute(page: MoreRoute.page, path: 'more'),
              AutoRoute(page: BookDetailRoute.page, path: 'book/:bookId'),
              AutoRoute(page: BookUpdateRoute.page, path: 'book/:bookId/update'),
            ],
          ),
        ],
      ),
      CustomRoute(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        guards: [AuthGuard(_ref)],
        page: BannerRoute.page,
        path: '/banner',
        fullscreenDialog: true,
      ),
      AutoRoute(
        page: ProfileUpdateRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/profile/update',
      ),
      AutoRoute(
        page: BookCreateRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/book/create',
      ),
      AutoRoute(
        page: BookDetailRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/book/:bookId',
      ),
      AutoRoute(
        page: BookUpdateRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/book/:bookId/update',
      ),
      AutoRoute(
        page: PrivacySecurityRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/profile/privacy-security',
      ),
      AutoRoute(
        page: HelpCenterRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/help',
      ),
      AutoRoute(
        page: ContactUsRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/contact',
      ),
      AutoRoute(
        page: TradeRequestCreateRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/trade-request/:bookId/create',
      ),
      AutoRoute(
        page: MessageRoomRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/messages/:recipientId',
      ),
      AutoRoute(
        page: MessageRecipientDetailRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/messages/:recipientId/detail',
      ),
      AutoRoute(
        page: NotificationRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/notifications',
      ),
      AutoRoute(
        page: TradeRequestRejectRoute.page,
        guards: [AuthGuard(_ref)],
        path: '/trade-request/:tradeRequestId/reject',
      ),
    ];
  }
}
