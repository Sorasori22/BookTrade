// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:book_swap/src/presentation/modules/auth/sign_in_page.dart'
    as _i2;
import 'package:book_swap/src/presentation/modules/root_page.dart' as _i1;
import 'package:book_swap/src/presentation/modules/splash/splash_page.dart'
    as _i3;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/widgets.dart' as _i5;

/// generated route for
/// [_i1.RootPage]
class RootRoute extends _i4.PageRouteInfo<void> {
  const RootRoute({List<_i4.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.RootPage();
    },
  );
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i4.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i5.Key? key,
    void Function()? onSuccess,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         SignInRoute.name,
         args: SignInRouteArgs(key: key, onSuccess: onSuccess),
         initialChildren: children,
       );

  static const String name = 'SignInRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignInRouteArgs>(
        orElse: () => const SignInRouteArgs(),
      );
      return _i2.SignInPage(key: args.key, onSuccess: args.onSuccess);
    },
  );
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key, this.onSuccess});

  final _i5.Key? key;

  final void Function()? onSuccess;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i6.Key? key,
    _i6.VoidCallback? onInitialized,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         SplashRoute.name,
         args: SplashRouteArgs(key: key, onInitialized: onInitialized),
         initialChildren: children,
       );

  static const String name = 'SplashRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashRouteArgs>(
        orElse: () => const SplashRouteArgs(),
      );
      return _i3.SplashPage(key: args.key, onInitialized: args.onInitialized);
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key, this.onInitialized});

  final _i6.Key? key;

  final _i6.VoidCallback? onInitialized;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onInitialized: $onInitialized}';
  }
}
