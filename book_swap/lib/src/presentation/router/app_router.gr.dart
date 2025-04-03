// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i23;
import 'package:book_swap/src/core/storage/image_object.dart' as _i26;
import 'package:book_swap/src/presentation/modules/auth/auth_page.dart' as _i1;
import 'package:book_swap/src/presentation/modules/banner/banner_page.dart'
    as _i2;
import 'package:book_swap/src/presentation/modules/book/book_create_page.dart'
    as _i3;
import 'package:book_swap/src/presentation/modules/book/book_detail_page.dart'
    as _i4;
import 'package:book_swap/src/presentation/modules/book/book_page.dart' as _i5;
import 'package:book_swap/src/presentation/modules/book/book_update_page.dart'
    as _i6;
import 'package:book_swap/src/presentation/modules/book/search_page.dart'
    as _i19;
import 'package:book_swap/src/presentation/modules/home/home_page.dart' as _i9;
import 'package:book_swap/src/presentation/modules/message/message_list_page.dart'
    as _i10;
import 'package:book_swap/src/presentation/modules/message/message_page.dart'
    as _i11;
import 'package:book_swap/src/presentation/modules/message/message_room_page.dart'
    as _i12;
import 'package:book_swap/src/presentation/modules/notification/notification_page.dart'
    as _i14;
import 'package:book_swap/src/presentation/modules/profile/contact_us_page.dart'
    as _i7;
import 'package:book_swap/src/presentation/modules/profile/help_center_page.dart'
    as _i8;
import 'package:book_swap/src/presentation/modules/profile/more_page.dart'
    as _i13;
import 'package:book_swap/src/presentation/modules/profile/privacy_security_page.dart'
    as _i15;
import 'package:book_swap/src/presentation/modules/profile/profile_page.dart'
    as _i16;
import 'package:book_swap/src/presentation/modules/profile/profile_update_page.dart'
    as _i17;
import 'package:book_swap/src/presentation/modules/root_page.dart' as _i18;
import 'package:book_swap/src/presentation/modules/splash/splash_page.dart'
    as _i20;
import 'package:book_swap/src/presentation/modules/trade/request/trade_request_create_page.dart'
    as _i21;
import 'package:book_swap/src/presentation/modules/trade/trade_request_list_page.dart'
    as _i22;
import 'package:flutter/material.dart' as _i25;
import 'package:flutter/widgets.dart' as _i24;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i23.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i24.Key? key,
    void Function()? onSuccess,
    List<_i23.PageRouteInfo>? children,
  }) : super(
         AuthRoute.name,
         args: AuthRouteArgs(key: key, onSuccess: onSuccess),
         initialChildren: children,
       );

  static const String name = 'AuthRoute';

  static _i23.PageInfo page = _i23.PageInfo(
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

  final _i24.Key? key;

  final void Function()? onSuccess;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [_i2.BannerPage]
class BannerRoute extends _i23.PageRouteInfo<void> {
  const BannerRoute({List<_i23.PageRouteInfo>? children})
    : super(BannerRoute.name, initialChildren: children);

  static const String name = 'BannerRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i2.BannerPage();
    },
  );
}

/// generated route for
/// [_i3.BookCreatePage]
class BookCreateRoute extends _i23.PageRouteInfo<void> {
  const BookCreateRoute({List<_i23.PageRouteInfo>? children})
    : super(BookCreateRoute.name, initialChildren: children);

  static const String name = 'BookCreateRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i3.BookCreatePage();
    },
  );
}

/// generated route for
/// [_i4.BookDetailPage]
class BookDetailRoute extends _i23.PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    _i25.Key? key,
    required String bookIdString,
    bool hideSwapButton = false,
    List<_i23.PageRouteInfo>? children,
  }) : super(
         BookDetailRoute.name,
         args: BookDetailRouteArgs(
           key: key,
           bookIdString: bookIdString,
           hideSwapButton: hideSwapButton,
         ),
         rawPathParams: {'bookId': bookIdString},
         initialChildren: children,
       );

  static const String name = 'BookDetailRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BookDetailRouteArgs>(
        orElse:
            () => BookDetailRouteArgs(
              bookIdString: pathParams.getString('bookId'),
            ),
      );
      return _i4.BookDetailPage(
        key: args.key,
        bookIdString: args.bookIdString,
        hideSwapButton: args.hideSwapButton,
      );
    },
  );
}

class BookDetailRouteArgs {
  const BookDetailRouteArgs({
    this.key,
    required this.bookIdString,
    this.hideSwapButton = false,
  });

  final _i25.Key? key;

  final String bookIdString;

  final bool hideSwapButton;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, bookIdString: $bookIdString, hideSwapButton: $hideSwapButton}';
  }
}

/// generated route for
/// [_i5.BookPage]
class BookRoute extends _i23.PageRouteInfo<void> {
  const BookRoute({List<_i23.PageRouteInfo>? children})
    : super(BookRoute.name, initialChildren: children);

  static const String name = 'BookRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i5.BookPage();
    },
  );
}

/// generated route for
/// [_i6.BookUpdatePage]
class BookUpdateRoute extends _i23.PageRouteInfo<BookUpdateRouteArgs> {
  BookUpdateRoute({
    _i25.Key? key,
    required String bookIdString,
    List<_i23.PageRouteInfo>? children,
  }) : super(
         BookUpdateRoute.name,
         args: BookUpdateRouteArgs(key: key, bookIdString: bookIdString),
         rawPathParams: {'bookId': bookIdString},
         initialChildren: children,
       );

  static const String name = 'BookUpdateRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BookUpdateRouteArgs>(
        orElse:
            () => BookUpdateRouteArgs(
              bookIdString: pathParams.getString('bookId'),
            ),
      );
      return _i6.BookUpdatePage(key: args.key, bookIdString: args.bookIdString);
    },
  );
}

class BookUpdateRouteArgs {
  const BookUpdateRouteArgs({this.key, required this.bookIdString});

  final _i25.Key? key;

  final String bookIdString;

  @override
  String toString() {
    return 'BookUpdateRouteArgs{key: $key, bookIdString: $bookIdString}';
  }
}

/// generated route for
/// [_i7.ContactUsPage]
class ContactUsRoute extends _i23.PageRouteInfo<void> {
  const ContactUsRoute({List<_i23.PageRouteInfo>? children})
    : super(ContactUsRoute.name, initialChildren: children);

  static const String name = 'ContactUsRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i7.ContactUsPage();
    },
  );
}

/// generated route for
/// [_i8.HelpCenterPage]
class HelpCenterRoute extends _i23.PageRouteInfo<void> {
  const HelpCenterRoute({List<_i23.PageRouteInfo>? children})
    : super(HelpCenterRoute.name, initialChildren: children);

  static const String name = 'HelpCenterRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i8.HelpCenterPage();
    },
  );
}

/// generated route for
/// [_i9.HomePage]
class HomeRoute extends _i23.PageRouteInfo<void> {
  const HomeRoute({List<_i23.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i9.HomePage();
    },
  );
}

/// generated route for
/// [_i10.MessageListPage]
class MessageListRoute extends _i23.PageRouteInfo<void> {
  const MessageListRoute({List<_i23.PageRouteInfo>? children})
    : super(MessageListRoute.name, initialChildren: children);

  static const String name = 'MessageListRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i10.MessageListPage();
    },
  );
}

/// generated route for
/// [_i11.MessagePage]
class MessageRoute extends _i23.PageRouteInfo<void> {
  const MessageRoute({List<_i23.PageRouteInfo>? children})
    : super(MessageRoute.name, initialChildren: children);

  static const String name = 'MessageRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i11.MessagePage();
    },
  );
}

/// generated route for
/// [_i12.MessageRoomPage]
class MessageRoomRoute extends _i23.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i25.Key? key,
    required String recipientId,
    String? recipientName,
    _i26.ImageObject? recipientAvatar,
    List<_i23.PageRouteInfo>? children,
  }) : super(
         MessageRoomRoute.name,
         args: MessageRoomRouteArgs(
           key: key,
           recipientId: recipientId,
           recipientName: recipientName,
           recipientAvatar: recipientAvatar,
         ),
         initialChildren: children,
       );

  static const String name = 'MessageRoomRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MessageRoomRouteArgs>();
      return _i12.MessageRoomPage(
        key: args.key,
        recipientId: args.recipientId,
        recipientName: args.recipientName,
        recipientAvatar: args.recipientAvatar,
      );
    },
  );
}

class MessageRoomRouteArgs {
  const MessageRoomRouteArgs({
    this.key,
    required this.recipientId,
    this.recipientName,
    this.recipientAvatar,
  });

  final _i25.Key? key;

  final String recipientId;

  final String? recipientName;

  final _i26.ImageObject? recipientAvatar;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, recipientId: $recipientId, recipientName: $recipientName, recipientAvatar: $recipientAvatar}';
  }
}

/// generated route for
/// [_i13.MorePage]
class MoreRoute extends _i23.PageRouteInfo<void> {
  const MoreRoute({List<_i23.PageRouteInfo>? children})
    : super(MoreRoute.name, initialChildren: children);

  static const String name = 'MoreRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i13.MorePage();
    },
  );
}

/// generated route for
/// [_i14.NotificationPage]
class NotificationRoute extends _i23.PageRouteInfo<void> {
  const NotificationRoute({List<_i23.PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i14.NotificationPage();
    },
  );
}

/// generated route for
/// [_i15.PrivacySecurityPage]
class PrivacySecurityRoute extends _i23.PageRouteInfo<void> {
  const PrivacySecurityRoute({List<_i23.PageRouteInfo>? children})
    : super(PrivacySecurityRoute.name, initialChildren: children);

  static const String name = 'PrivacySecurityRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i15.PrivacySecurityPage();
    },
  );
}

/// generated route for
/// [_i16.ProfilePage]
class ProfileRoute extends _i23.PageRouteInfo<void> {
  const ProfileRoute({List<_i23.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i16.ProfilePage();
    },
  );
}

/// generated route for
/// [_i16.ProfileRootPage]
class ProfileRootRoute extends _i23.PageRouteInfo<void> {
  const ProfileRootRoute({List<_i23.PageRouteInfo>? children})
    : super(ProfileRootRoute.name, initialChildren: children);

  static const String name = 'ProfileRootRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i16.ProfileRootPage();
    },
  );
}

/// generated route for
/// [_i17.ProfileUpdatePage]
class ProfileUpdateRoute extends _i23.PageRouteInfo<void> {
  const ProfileUpdateRoute({List<_i23.PageRouteInfo>? children})
    : super(ProfileUpdateRoute.name, initialChildren: children);

  static const String name = 'ProfileUpdateRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i17.ProfileUpdatePage();
    },
  );
}

/// generated route for
/// [_i18.RootPage]
class RootRoute extends _i23.PageRouteInfo<void> {
  const RootRoute({List<_i23.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i18.RootPage();
    },
  );
}

/// generated route for
/// [_i19.SearchPage]
class SearchRoute extends _i23.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i25.Key? key,
    bool autoFocus = false,
    List<_i23.PageRouteInfo>? children,
  }) : super(
         SearchRoute.name,
         args: SearchRouteArgs(key: key, autoFocus: autoFocus),
         initialChildren: children,
       );

  static const String name = 'SearchRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>(
        orElse: () => const SearchRouteArgs(),
      );
      return _i19.SearchPage(key: args.key, autoFocus: args.autoFocus);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, this.autoFocus = false});

  final _i25.Key? key;

  final bool autoFocus;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, autoFocus: $autoFocus}';
  }
}

/// generated route for
/// [_i20.SplashPage]
class SplashRoute extends _i23.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i25.Key? key,
    _i25.VoidCallback? onInitialized,
    List<_i23.PageRouteInfo>? children,
  }) : super(
         SplashRoute.name,
         args: SplashRouteArgs(key: key, onInitialized: onInitialized),
         initialChildren: children,
       );

  static const String name = 'SplashRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashRouteArgs>(
        orElse: () => const SplashRouteArgs(),
      );
      return _i20.SplashPage(key: args.key, onInitialized: args.onInitialized);
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key, this.onInitialized});

  final _i25.Key? key;

  final _i25.VoidCallback? onInitialized;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onInitialized: $onInitialized}';
  }
}

/// generated route for
/// [_i21.TradeRequestCreatePage]
class TradeRequestCreateRoute
    extends _i23.PageRouteInfo<TradeRequestCreateRouteArgs> {
  TradeRequestCreateRoute({
    _i25.Key? key,
    required int bookId,
    List<_i23.PageRouteInfo>? children,
  }) : super(
         TradeRequestCreateRoute.name,
         args: TradeRequestCreateRouteArgs(key: key, bookId: bookId),
         rawPathParams: {'bookId': bookId},
         initialChildren: children,
       );

  static const String name = 'TradeRequestCreateRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TradeRequestCreateRouteArgs>(
        orElse:
            () => TradeRequestCreateRouteArgs(
              bookId: pathParams.getInt('bookId'),
            ),
      );
      return _i21.TradeRequestCreatePage(key: args.key, bookId: args.bookId);
    },
  );
}

class TradeRequestCreateRouteArgs {
  const TradeRequestCreateRouteArgs({this.key, required this.bookId});

  final _i25.Key? key;

  final int bookId;

  @override
  String toString() {
    return 'TradeRequestCreateRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [_i22.TradeRequestListPage]
class TradeRequestListRoute extends _i23.PageRouteInfo<void> {
  const TradeRequestListRoute({List<_i23.PageRouteInfo>? children})
    : super(TradeRequestListRoute.name, initialChildren: children);

  static const String name = 'TradeRequestListRoute';

  static _i23.PageInfo page = _i23.PageInfo(
    name,
    builder: (data) {
      return const _i22.TradeRequestListPage();
    },
  );
}
