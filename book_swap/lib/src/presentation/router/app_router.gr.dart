// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:book_swap/src/presentation/modules/auth/auth_page.dart' as _i1;
import 'package:book_swap/src/presentation/modules/book/book_page.dart' as _i2;
import 'package:book_swap/src/presentation/modules/home/home_page.dart' as _i3;
import 'package:book_swap/src/presentation/modules/message/message_page.dart'
    as _i4;
import 'package:book_swap/src/presentation/modules/profile/more_page.dart'
    as _i5;
import 'package:book_swap/src/presentation/modules/profile/profile_page.dart'
    as _i6;
import 'package:book_swap/src/presentation/modules/profile/profile_update_page.dart'
    as _i7;
import 'package:book_swap/src/presentation/modules/root_page.dart' as _i8;
import 'package:book_swap/src/presentation/modules/splash/splash_page.dart'
    as _i9;
import 'package:flutter/material.dart' as _i12;
import 'package:flutter/widgets.dart' as _i11;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i10.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i11.Key? key,
    void Function()? onSuccess,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         AuthRoute.name,
         args: AuthRouteArgs(key: key, onSuccess: onSuccess),
         initialChildren: children,
       );

  static const String name = 'AuthRoute';

  static _i10.PageInfo page = _i10.PageInfo(
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

  final _i11.Key? key;

  final void Function()? onSuccess;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [_i2.BookPage]
class BookRoute extends _i10.PageRouteInfo<void> {
  const BookRoute({List<_i10.PageRouteInfo>? children})
    : super(BookRoute.name, initialChildren: children);

  static const String name = 'BookRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.BookPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.MessagePage]
class MessageRoute extends _i10.PageRouteInfo<void> {
  const MessageRoute({List<_i10.PageRouteInfo>? children})
    : super(MessageRoute.name, initialChildren: children);

  static const String name = 'MessageRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.MessagePage();
    },
  );
}

/// generated route for
/// [_i5.MorePage]
class MoreRoute extends _i10.PageRouteInfo<void> {
  const MoreRoute({List<_i10.PageRouteInfo>? children})
    : super(MoreRoute.name, initialChildren: children);

  static const String name = 'MoreRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.MorePage();
    },
  );
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfilePage();
    },
  );
}

/// generated route for
/// [_i6.ProfileRootPage]
class ProfileRootRoute extends _i10.PageRouteInfo<void> {
  const ProfileRootRoute({List<_i10.PageRouteInfo>? children})
    : super(ProfileRootRoute.name, initialChildren: children);

  static const String name = 'ProfileRootRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileRootPage();
    },
  );
}

/// generated route for
/// [_i7.ProfileUpdatePage]
class ProfileUpdateRoute extends _i10.PageRouteInfo<void> {
  const ProfileUpdateRoute({List<_i10.PageRouteInfo>? children})
    : super(ProfileUpdateRoute.name, initialChildren: children);

  static const String name = 'ProfileUpdateRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.ProfileUpdatePage();
    },
  );
}

/// generated route for
/// [_i8.RootPage]
class RootRoute extends _i10.PageRouteInfo<void> {
  const RootRoute({List<_i10.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.RootPage();
    },
  );
}

/// generated route for
/// [_i9.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i12.Key? key,
    _i12.VoidCallback? onInitialized,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         SplashRoute.name,
         args: SplashRouteArgs(key: key, onInitialized: onInitialized),
         initialChildren: children,
       );

  static const String name = 'SplashRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashRouteArgs>(
        orElse: () => const SplashRouteArgs(),
      );
      return _i9.SplashPage(key: args.key, onInitialized: args.onInitialized);
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key, this.onInitialized});

  final _i12.Key? key;

  final _i12.VoidCallback? onInitialized;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onInitialized: $onInitialized}';
  }
}
