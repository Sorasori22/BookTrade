// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:book_swap/src/presentation/modules/auth/sign_in_page.dart'
    as _i2;
import 'package:book_swap/src/presentation/modules/root_page.dart' as _i1;
import 'package:book_swap/src/presentation/modules/splash/splash_page.dart'
    as _i3;
import 'package:book_swap/src/presentation/modules/user/user_create_page.dart'
    as _i4;
import 'package:book_swap/src/presentation/modules/user/user_detail_page.dart'
    as _i5;
import 'package:book_swap/src/presentation/modules/user/user_list_page.dart'
    as _i6;
import 'package:book_swap/src/presentation/modules/user/user_page.dart' as _i7;
import 'package:book_swap/src/presentation/modules/user/user_update_page.dart'
    as _i8;
import 'package:flutter/material.dart' as _i11;
import 'package:flutter/widgets.dart' as _i10;

/// generated route for
/// [_i1.RootPage]
class RootRoute extends _i9.PageRouteInfo<void> {
  const RootRoute({List<_i9.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.RootPage();
    },
  );
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i10.Key? key,
    void Function()? onSuccess,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         SignInRoute.name,
         args: SignInRouteArgs(key: key, onSuccess: onSuccess),
         initialChildren: children,
       );

  static const String name = 'SignInRoute';

  static _i9.PageInfo page = _i9.PageInfo(
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

  final _i10.Key? key;

  final void Function()? onSuccess;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i11.Key? key,
    _i11.VoidCallback? onInitialized,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         SplashRoute.name,
         args: SplashRouteArgs(key: key, onInitialized: onInitialized),
         initialChildren: children,
       );

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
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

  final _i11.Key? key;

  final _i11.VoidCallback? onInitialized;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onInitialized: $onInitialized}';
  }
}

/// generated route for
/// [_i4.UserCreatePage]
class UserCreateRoute extends _i9.PageRouteInfo<void> {
  const UserCreateRoute({List<_i9.PageRouteInfo>? children})
    : super(UserCreateRoute.name, initialChildren: children);

  static const String name = 'UserCreateRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.UserCreatePage();
    },
  );
}

/// generated route for
/// [_i5.UserDetailPage]
class UserDetailRoute extends _i9.PageRouteInfo<UserDetailRouteArgs> {
  UserDetailRoute({
    _i11.Key? key,
    required String userIdString,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         UserDetailRoute.name,
         args: UserDetailRouteArgs(key: key, userIdString: userIdString),
         rawPathParams: {'id': userIdString},
         initialChildren: children,
       );

  static const String name = 'UserDetailRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserDetailRouteArgs>(
        orElse:
            () => UserDetailRouteArgs(userIdString: pathParams.getString('id')),
      );
      return _i5.UserDetailPage(key: args.key, userIdString: args.userIdString);
    },
  );
}

class UserDetailRouteArgs {
  const UserDetailRouteArgs({this.key, required this.userIdString});

  final _i11.Key? key;

  final String userIdString;

  @override
  String toString() {
    return 'UserDetailRouteArgs{key: $key, userIdString: $userIdString}';
  }
}

/// generated route for
/// [_i6.UserListPage]
class UserListRoute extends _i9.PageRouteInfo<void> {
  const UserListRoute({List<_i9.PageRouteInfo>? children})
    : super(UserListRoute.name, initialChildren: children);

  static const String name = 'UserListRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.UserListPage();
    },
  );
}

/// generated route for
/// [_i7.UserPage]
class UserRoute extends _i9.PageRouteInfo<void> {
  const UserRoute({List<_i9.PageRouteInfo>? children})
    : super(UserRoute.name, initialChildren: children);

  static const String name = 'UserRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.UserPage();
    },
  );
}

/// generated route for
/// [_i8.UserUpdatePage]
class UserUpdateRoute extends _i9.PageRouteInfo<UserUpdateRouteArgs> {
  UserUpdateRoute({
    _i11.Key? key,
    required String userIdString,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         UserUpdateRoute.name,
         args: UserUpdateRouteArgs(key: key, userIdString: userIdString),
         rawPathParams: {'id': userIdString},
         initialChildren: children,
       );

  static const String name = 'UserUpdateRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserUpdateRouteArgs>(
        orElse:
            () => UserUpdateRouteArgs(userIdString: pathParams.getString('id')),
      );
      return _i8.UserUpdatePage(key: args.key, userIdString: args.userIdString);
    },
  );
}

class UserUpdateRouteArgs {
  const UserUpdateRouteArgs({this.key, required this.userIdString});

  final _i11.Key? key;

  final String userIdString;

  @override
  String toString() {
    return 'UserUpdateRouteArgs{key: $key, userIdString: $userIdString}';
  }
}
