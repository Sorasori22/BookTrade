// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:book_swap/src/presentation/modules/auth/auth_page.dart' as _i1;
import 'package:book_swap/src/presentation/modules/book/book_create_page.dart'
    as _i2;
import 'package:book_swap/src/presentation/modules/book/book_detail_page.dart'
    as _i3;
import 'package:book_swap/src/presentation/modules/book/book_page.dart' as _i4;
import 'package:book_swap/src/presentation/modules/book/book_update_page.dart'
    as _i5;
import 'package:book_swap/src/presentation/modules/book/search_page.dart'
    as _i16;
import 'package:book_swap/src/presentation/modules/home/home_page.dart' as _i8;
import 'package:book_swap/src/presentation/modules/message/message_list_page.dart'
    as _i9;
import 'package:book_swap/src/presentation/modules/message/message_page.dart'
    as _i10;
import 'package:book_swap/src/presentation/modules/profile/contact_us_page.dart'
    as _i6;
import 'package:book_swap/src/presentation/modules/profile/help_center_page.dart'
    as _i7;
import 'package:book_swap/src/presentation/modules/profile/more_page.dart'
    as _i11;
import 'package:book_swap/src/presentation/modules/profile/privacy_security_page.dart'
    as _i12;
import 'package:book_swap/src/presentation/modules/profile/profile_page.dart'
    as _i13;
import 'package:book_swap/src/presentation/modules/profile/profile_update_page.dart'
    as _i14;
import 'package:book_swap/src/presentation/modules/root_page.dart' as _i15;
import 'package:book_swap/src/presentation/modules/splash/splash_page.dart'
    as _i17;
import 'package:book_swap/src/presentation/modules/trade/request/trade_request_create_page.dart'
    as _i18;
import 'package:book_swap/src/presentation/modules/trade/trade_request_list_page.dart'
    as _i19;
import 'package:flutter/material.dart' as _i22;
import 'package:flutter/widgets.dart' as _i21;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i20.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i21.Key? key,
    void Function()? onSuccess,
    List<_i20.PageRouteInfo>? children,
  }) : super(
         AuthRoute.name,
         args: AuthRouteArgs(key: key, onSuccess: onSuccess),
         initialChildren: children,
       );

  static const String name = 'AuthRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthRouteArgs>(
        orElse: () => const AuthRouteArgs(),
      );
      return _i1.AuthPage(key: args.key, onSuccess: args.onSuccess);
    },
  );
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key, this.onSuccess});

  final _i21.Key? key;

  final void Function()? onSuccess;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [_i2.BookCreatePage]
class BookCreateRoute extends _i20.PageRouteInfo<void> {
  const BookCreateRoute({List<_i20.PageRouteInfo>? children})
    : super(BookCreateRoute.name, initialChildren: children);

  static const String name = 'BookCreateRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i2.BookCreatePage();
    },
  );
}

/// generated route for
/// [_i3.BookDetailPage]
class BookDetailRoute extends _i20.PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    _i22.Key? key,
    required String bookIdString,
    List<_i20.PageRouteInfo>? children,
  }) : super(
         BookDetailRoute.name,
         args: BookDetailRouteArgs(key: key, bookIdString: bookIdString),
         rawPathParams: {'bookId': bookIdString},
         initialChildren: children,
       );

  static const String name = 'BookDetailRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BookDetailRouteArgs>(
        orElse:
            () => BookDetailRouteArgs(
              bookIdString: pathParams.getString('bookId'),
            ),
      );
      return _i3.BookDetailPage(key: args.key, bookIdString: args.bookIdString);
    },
  );
}

class BookDetailRouteArgs {
  const BookDetailRouteArgs({this.key, required this.bookIdString});

  final _i22.Key? key;

  final String bookIdString;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, bookIdString: $bookIdString}';
  }
}

/// generated route for
/// [_i4.BookPage]
class BookRoute extends _i20.PageRouteInfo<void> {
  const BookRoute({List<_i20.PageRouteInfo>? children})
    : super(BookRoute.name, initialChildren: children);

  static const String name = 'BookRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i4.BookPage();
    },
  );
}

/// generated route for
/// [_i5.BookUpdatePage]
class BookUpdateRoute extends _i20.PageRouteInfo<BookUpdateRouteArgs> {
  BookUpdateRoute({
    _i22.Key? key,
    required String bookIdString,
    List<_i20.PageRouteInfo>? children,
  }) : super(
         BookUpdateRoute.name,
         args: BookUpdateRouteArgs(key: key, bookIdString: bookIdString),
         rawPathParams: {'bookId': bookIdString},
         initialChildren: children,
       );

  static const String name = 'BookUpdateRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BookUpdateRouteArgs>(
        orElse:
            () => BookUpdateRouteArgs(
              bookIdString: pathParams.getString('bookId'),
            ),
      );
      return _i5.BookUpdatePage(key: args.key, bookIdString: args.bookIdString);
    },
  );
}

class BookUpdateRouteArgs {
  const BookUpdateRouteArgs({this.key, required this.bookIdString});

  final _i22.Key? key;

  final String bookIdString;

  @override
  String toString() {
    return 'BookUpdateRouteArgs{key: $key, bookIdString: $bookIdString}';
  }
}

/// generated route for
/// [_i6.ContactUsPage]
class ContactUsRoute extends _i20.PageRouteInfo<void> {
  const ContactUsRoute({List<_i20.PageRouteInfo>? children})
    : super(ContactUsRoute.name, initialChildren: children);

  static const String name = 'ContactUsRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i6.ContactUsPage();
    },
  );
}

/// generated route for
/// [_i7.HelpCenterPage]
class HelpCenterRoute extends _i20.PageRouteInfo<void> {
  const HelpCenterRoute({List<_i20.PageRouteInfo>? children})
    : super(HelpCenterRoute.name, initialChildren: children);

  static const String name = 'HelpCenterRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i7.HelpCenterPage();
    },
  );
}

/// generated route for
/// [_i8.HomePage]
class HomeRoute extends _i20.PageRouteInfo<void> {
  const HomeRoute({List<_i20.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i8.HomePage();
    },
  );
}

/// generated route for
/// [_i9.MessageListPage]
class MessageListRoute extends _i20.PageRouteInfo<void> {
  const MessageListRoute({List<_i20.PageRouteInfo>? children})
    : super(MessageListRoute.name, initialChildren: children);

  static const String name = 'MessageListRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i9.MessageListPage();
    },
  );
}

/// generated route for
/// [_i10.MessagePage]
class MessageRoute extends _i20.PageRouteInfo<void> {
  const MessageRoute({List<_i20.PageRouteInfo>? children})
    : super(MessageRoute.name, initialChildren: children);

  static const String name = 'MessageRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i10.MessagePage();
    },
  );
}

/// generated route for
/// [_i11.MorePage]
class MoreRoute extends _i20.PageRouteInfo<void> {
  const MoreRoute({List<_i20.PageRouteInfo>? children})
    : super(MoreRoute.name, initialChildren: children);

  static const String name = 'MoreRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i11.MorePage();
    },
  );
}

/// generated route for
/// [_i12.PrivacySecurityPage]
class PrivacySecurityRoute extends _i20.PageRouteInfo<void> {
  const PrivacySecurityRoute({List<_i20.PageRouteInfo>? children})
    : super(PrivacySecurityRoute.name, initialChildren: children);

  static const String name = 'PrivacySecurityRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i12.PrivacySecurityPage();
    },
  );
}

/// generated route for
/// [_i13.ProfilePage]
class ProfileRoute extends _i20.PageRouteInfo<void> {
  const ProfileRoute({List<_i20.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i13.ProfilePage();
    },
  );
}

/// generated route for
/// [_i13.ProfileRootPage]
class ProfileRootRoute extends _i20.PageRouteInfo<void> {
  const ProfileRootRoute({List<_i20.PageRouteInfo>? children})
    : super(ProfileRootRoute.name, initialChildren: children);

  static const String name = 'ProfileRootRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i13.ProfileRootPage();
    },
  );
}

/// generated route for
/// [_i14.ProfileUpdatePage]
class ProfileUpdateRoute extends _i20.PageRouteInfo<void> {
  const ProfileUpdateRoute({List<_i20.PageRouteInfo>? children})
    : super(ProfileUpdateRoute.name, initialChildren: children);

  static const String name = 'ProfileUpdateRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i14.ProfileUpdatePage();
    },
  );
}

/// generated route for
/// [_i15.RootPage]
class RootRoute extends _i20.PageRouteInfo<void> {
  const RootRoute({List<_i20.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i15.RootPage();
    },
  );
}

/// generated route for
/// [_i16.SearchPage]
class SearchRoute extends _i20.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i22.Key? key,
    bool autoFocus = false,
    List<_i20.PageRouteInfo>? children,
  }) : super(
         SearchRoute.name,
         args: SearchRouteArgs(key: key, autoFocus: autoFocus),
         initialChildren: children,
       );

  static const String name = 'SearchRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>(
        orElse: () => const SearchRouteArgs(),
      );
      return _i16.SearchPage(key: args.key, autoFocus: args.autoFocus);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, this.autoFocus = false});

  final _i22.Key? key;

  final bool autoFocus;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, autoFocus: $autoFocus}';
  }
}

/// generated route for
/// [_i17.SplashPage]
class SplashRoute extends _i20.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i22.Key? key,
    _i22.VoidCallback? onInitialized,
    List<_i20.PageRouteInfo>? children,
  }) : super(
         SplashRoute.name,
         args: SplashRouteArgs(key: key, onInitialized: onInitialized),
         initialChildren: children,
       );

  static const String name = 'SplashRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashRouteArgs>(
        orElse: () => const SplashRouteArgs(),
      );
      return _i17.SplashPage(key: args.key, onInitialized: args.onInitialized);
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key, this.onInitialized});

  final _i22.Key? key;

  final _i22.VoidCallback? onInitialized;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onInitialized: $onInitialized}';
  }
}

/// generated route for
/// [_i18.TradeRequestCreatePage]
class TradeRequestCreateRoute
    extends _i20.PageRouteInfo<TradeRequestCreateRouteArgs> {
  TradeRequestCreateRoute({
    _i22.Key? key,
    required int bookId,
    List<_i20.PageRouteInfo>? children,
  }) : super(
         TradeRequestCreateRoute.name,
         args: TradeRequestCreateRouteArgs(key: key, bookId: bookId),
         rawPathParams: {'bookId': bookId},
         initialChildren: children,
       );

  static const String name = 'TradeRequestCreateRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TradeRequestCreateRouteArgs>(
        orElse:
            () => TradeRequestCreateRouteArgs(
              bookId: pathParams.getInt('bookId'),
            ),
      );
      return _i18.TradeRequestCreatePage(key: args.key, bookId: args.bookId);
    },
  );
}

class TradeRequestCreateRouteArgs {
  const TradeRequestCreateRouteArgs({this.key, required this.bookId});

  final _i22.Key? key;

  final int bookId;

  @override
  String toString() {
    return 'TradeRequestCreateRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [_i19.TradeRequestListPage]
class TradeRequestListRoute extends _i20.PageRouteInfo<void> {
  const TradeRequestListRoute({List<_i20.PageRouteInfo>? children})
    : super(TradeRequestListRoute.name, initialChildren: children);

  static const String name = 'TradeRequestListRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i19.TradeRequestListPage();
    },
  );
}
