// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i27;
import 'package:book_swap/src/core/storage/image_object.dart' as _i30;
import 'package:book_swap/src/presentation/modules/auth/auth_page.dart' as _i2;
import 'package:book_swap/src/presentation/modules/banner/banner_page.dart'
    as _i3;
import 'package:book_swap/src/presentation/modules/book/book_create_page.dart'
    as _i4;
import 'package:book_swap/src/presentation/modules/book/book_detail_page.dart'
    as _i5;
import 'package:book_swap/src/presentation/modules/book/book_page.dart' as _i6;
import 'package:book_swap/src/presentation/modules/book/book_update_page.dart'
    as _i7;
import 'package:book_swap/src/presentation/modules/book/search_page.dart'
    as _i22;
import 'package:book_swap/src/presentation/modules/home/home_page.dart' as _i10;
import 'package:book_swap/src/presentation/modules/message/detail/message_recipient_detail_page.dart'
    as _i14;
import 'package:book_swap/src/presentation/modules/message/message_list_page.dart'
    as _i12;
import 'package:book_swap/src/presentation/modules/message/message_page.dart'
    as _i13;
import 'package:book_swap/src/presentation/modules/message/message_room_page.dart'
    as _i15;
import 'package:book_swap/src/presentation/modules/notification/notification_page.dart'
    as _i17;
import 'package:book_swap/src/presentation/modules/profile/appearance_page.dart'
    as _i1;
import 'package:book_swap/src/presentation/modules/profile/contact_us_page.dart'
    as _i8;
import 'package:book_swap/src/presentation/modules/profile/help_center_page.dart'
    as _i9;
import 'package:book_swap/src/presentation/modules/profile/language_page.dart'
    as _i11;
import 'package:book_swap/src/presentation/modules/profile/more_page.dart'
    as _i16;
import 'package:book_swap/src/presentation/modules/profile/privacy_security_page.dart'
    as _i18;
import 'package:book_swap/src/presentation/modules/profile/profile_page.dart'
    as _i19;
import 'package:book_swap/src/presentation/modules/profile/profile_update_page.dart'
    as _i20;
import 'package:book_swap/src/presentation/modules/root_page.dart' as _i21;
import 'package:book_swap/src/presentation/modules/splash/splash_page.dart'
    as _i23;
import 'package:book_swap/src/presentation/modules/trade/reject/trade_request_reject_page.dart'
    as _i26;
import 'package:book_swap/src/presentation/modules/trade/request/trade_request_create_page.dart'
    as _i24;
import 'package:book_swap/src/presentation/modules/trade/trade_request_list_page.dart'
    as _i25;
import 'package:flutter/material.dart' as _i29;
import 'package:flutter/widgets.dart' as _i28;

/// generated route for
/// [_i1.AppearancePage]
class AppearanceRoute extends _i27.PageRouteInfo<void> {
  const AppearanceRoute({List<_i27.PageRouteInfo>? children})
    : super(AppearanceRoute.name, initialChildren: children);

  static const String name = 'AppearanceRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppearancePage();
    },
  );
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i27.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i28.Key? key,
    void Function()? onSuccess,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         AuthRoute.name,
         args: AuthRouteArgs(key: key, onSuccess: onSuccess),
         initialChildren: children,
       );

  static const String name = 'AuthRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthRouteArgs>(
        orElse: () => const AuthRouteArgs(),
      );
      return _i2.AuthPage(key: args.key, onSuccess: args.onSuccess);
    },
  );
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key, this.onSuccess});

  final _i28.Key? key;

  final void Function()? onSuccess;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [_i3.BannerPage]
class BannerRoute extends _i27.PageRouteInfo<void> {
  const BannerRoute({List<_i27.PageRouteInfo>? children})
    : super(BannerRoute.name, initialChildren: children);

  static const String name = 'BannerRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i3.BannerPage();
    },
  );
}

/// generated route for
/// [_i4.BookCreatePage]
class BookCreateRoute extends _i27.PageRouteInfo<void> {
  const BookCreateRoute({List<_i27.PageRouteInfo>? children})
    : super(BookCreateRoute.name, initialChildren: children);

  static const String name = 'BookCreateRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i4.BookCreatePage();
    },
  );
}

/// generated route for
/// [_i5.BookDetailPage]
class BookDetailRoute extends _i27.PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    _i29.Key? key,
    required String bookIdString,
    bool hideSwapButton = false,
    List<_i27.PageRouteInfo>? children,
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

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BookDetailRouteArgs>(
        orElse:
            () => BookDetailRouteArgs(
              bookIdString: pathParams.getString('bookId'),
            ),
      );
      return _i5.BookDetailPage(
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

  final _i29.Key? key;

  final String bookIdString;

  final bool hideSwapButton;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, bookIdString: $bookIdString, hideSwapButton: $hideSwapButton}';
  }
}

/// generated route for
/// [_i6.BookPage]
class BookRoute extends _i27.PageRouteInfo<void> {
  const BookRoute({List<_i27.PageRouteInfo>? children})
    : super(BookRoute.name, initialChildren: children);

  static const String name = 'BookRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i6.BookPage();
    },
  );
}

/// generated route for
/// [_i7.BookUpdatePage]
class BookUpdateRoute extends _i27.PageRouteInfo<BookUpdateRouteArgs> {
  BookUpdateRoute({
    _i29.Key? key,
    required String bookIdString,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         BookUpdateRoute.name,
         args: BookUpdateRouteArgs(key: key, bookIdString: bookIdString),
         rawPathParams: {'bookId': bookIdString},
         initialChildren: children,
       );

  static const String name = 'BookUpdateRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BookUpdateRouteArgs>(
        orElse:
            () => BookUpdateRouteArgs(
              bookIdString: pathParams.getString('bookId'),
            ),
      );
      return _i7.BookUpdatePage(key: args.key, bookIdString: args.bookIdString);
    },
  );
}

class BookUpdateRouteArgs {
  const BookUpdateRouteArgs({this.key, required this.bookIdString});

  final _i29.Key? key;

  final String bookIdString;

  @override
  String toString() {
    return 'BookUpdateRouteArgs{key: $key, bookIdString: $bookIdString}';
  }
}

/// generated route for
/// [_i8.ContactUsPage]
class ContactUsRoute extends _i27.PageRouteInfo<void> {
  const ContactUsRoute({List<_i27.PageRouteInfo>? children})
    : super(ContactUsRoute.name, initialChildren: children);

  static const String name = 'ContactUsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i8.ContactUsPage();
    },
  );
}

/// generated route for
/// [_i9.HelpCenterPage]
class HelpCenterRoute extends _i27.PageRouteInfo<void> {
  const HelpCenterRoute({List<_i27.PageRouteInfo>? children})
    : super(HelpCenterRoute.name, initialChildren: children);

  static const String name = 'HelpCenterRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i9.HelpCenterPage();
    },
  );
}

/// generated route for
/// [_i10.HomePage]
class HomeRoute extends _i27.PageRouteInfo<void> {
  const HomeRoute({List<_i27.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i10.HomePage();
    },
  );
}

/// generated route for
/// [_i11.LanguagePage]
class LanguageRoute extends _i27.PageRouteInfo<void> {
  const LanguageRoute({List<_i27.PageRouteInfo>? children})
    : super(LanguageRoute.name, initialChildren: children);

  static const String name = 'LanguageRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i11.LanguagePage();
    },
  );
}

/// generated route for
/// [_i12.MessageListPage]
class MessageListRoute extends _i27.PageRouteInfo<void> {
  const MessageListRoute({List<_i27.PageRouteInfo>? children})
    : super(MessageListRoute.name, initialChildren: children);

  static const String name = 'MessageListRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i12.MessageListPage();
    },
  );
}

/// generated route for
/// [_i13.MessagePage]
class MessageRoute extends _i27.PageRouteInfo<void> {
  const MessageRoute({List<_i27.PageRouteInfo>? children})
    : super(MessageRoute.name, initialChildren: children);

  static const String name = 'MessageRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i13.MessagePage();
    },
  );
}

/// generated route for
/// [_i14.MessageRecipientDetailPage]
class MessageRecipientDetailRoute
    extends _i27.PageRouteInfo<MessageRecipientDetailRouteArgs> {
  MessageRecipientDetailRoute({
    _i29.Key? key,
    required String recipientId,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         MessageRecipientDetailRoute.name,
         args: MessageRecipientDetailRouteArgs(
           key: key,
           recipientId: recipientId,
         ),
         rawPathParams: {'recipientId': recipientId},
         initialChildren: children,
       );

  static const String name = 'MessageRecipientDetailRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MessageRecipientDetailRouteArgs>(
        orElse:
            () => MessageRecipientDetailRouteArgs(
              recipientId: pathParams.getString('recipientId'),
            ),
      );
      return _i14.MessageRecipientDetailPage(
        key: args.key,
        recipientId: args.recipientId,
      );
    },
  );
}

class MessageRecipientDetailRouteArgs {
  const MessageRecipientDetailRouteArgs({this.key, required this.recipientId});

  final _i29.Key? key;

  final String recipientId;

  @override
  String toString() {
    return 'MessageRecipientDetailRouteArgs{key: $key, recipientId: $recipientId}';
  }
}

/// generated route for
/// [_i15.MessageRoomPage]
class MessageRoomRoute extends _i27.PageRouteInfo<MessageRoomRouteArgs> {
  MessageRoomRoute({
    _i29.Key? key,
    required String recipientId,
    String? recipientName,
    _i30.ImageObject? recipientAvatar,
    List<_i27.PageRouteInfo>? children,
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

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MessageRoomRouteArgs>();
      return _i15.MessageRoomPage(
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

  final _i29.Key? key;

  final String recipientId;

  final String? recipientName;

  final _i30.ImageObject? recipientAvatar;

  @override
  String toString() {
    return 'MessageRoomRouteArgs{key: $key, recipientId: $recipientId, recipientName: $recipientName, recipientAvatar: $recipientAvatar}';
  }
}

/// generated route for
/// [_i16.MorePage]
class MoreRoute extends _i27.PageRouteInfo<void> {
  const MoreRoute({List<_i27.PageRouteInfo>? children})
    : super(MoreRoute.name, initialChildren: children);

  static const String name = 'MoreRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i16.MorePage();
    },
  );
}

/// generated route for
/// [_i17.NotificationPage]
class NotificationRoute extends _i27.PageRouteInfo<void> {
  const NotificationRoute({List<_i27.PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i17.NotificationPage();
    },
  );
}

/// generated route for
/// [_i18.PrivacySecurityPage]
class PrivacySecurityRoute extends _i27.PageRouteInfo<void> {
  const PrivacySecurityRoute({List<_i27.PageRouteInfo>? children})
    : super(PrivacySecurityRoute.name, initialChildren: children);

  static const String name = 'PrivacySecurityRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i18.PrivacySecurityPage();
    },
  );
}

/// generated route for
/// [_i19.ProfilePage]
class ProfileRoute extends _i27.PageRouteInfo<void> {
  const ProfileRoute({List<_i27.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i19.ProfilePage();
    },
  );
}

/// generated route for
/// [_i19.ProfileRootPage]
class ProfileRootRoute extends _i27.PageRouteInfo<void> {
  const ProfileRootRoute({List<_i27.PageRouteInfo>? children})
    : super(ProfileRootRoute.name, initialChildren: children);

  static const String name = 'ProfileRootRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i19.ProfileRootPage();
    },
  );
}

/// generated route for
/// [_i20.ProfileUpdatePage]
class ProfileUpdateRoute extends _i27.PageRouteInfo<void> {
  const ProfileUpdateRoute({List<_i27.PageRouteInfo>? children})
    : super(ProfileUpdateRoute.name, initialChildren: children);

  static const String name = 'ProfileUpdateRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i20.ProfileUpdatePage();
    },
  );
}

/// generated route for
/// [_i21.RootPage]
class RootRoute extends _i27.PageRouteInfo<void> {
  const RootRoute({List<_i27.PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i21.RootPage();
    },
  );
}

/// generated route for
/// [_i22.SearchPage]
class SearchRoute extends _i27.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i29.Key? key,
    bool autoFocus = false,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         SearchRoute.name,
         args: SearchRouteArgs(key: key, autoFocus: autoFocus),
         initialChildren: children,
       );

  static const String name = 'SearchRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>(
        orElse: () => const SearchRouteArgs(),
      );
      return _i22.SearchPage(key: args.key, autoFocus: args.autoFocus);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, this.autoFocus = false});

  final _i29.Key? key;

  final bool autoFocus;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, autoFocus: $autoFocus}';
  }
}

/// generated route for
/// [_i23.SplashPage]
class SplashRoute extends _i27.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i29.Key? key,
    _i29.VoidCallback? onInitialized,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         SplashRoute.name,
         args: SplashRouteArgs(key: key, onInitialized: onInitialized),
         initialChildren: children,
       );

  static const String name = 'SplashRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashRouteArgs>(
        orElse: () => const SplashRouteArgs(),
      );
      return _i23.SplashPage(key: args.key, onInitialized: args.onInitialized);
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key, this.onInitialized});

  final _i29.Key? key;

  final _i29.VoidCallback? onInitialized;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onInitialized: $onInitialized}';
  }
}

/// generated route for
/// [_i24.TradeRequestCreatePage]
class TradeRequestCreateRoute
    extends _i27.PageRouteInfo<TradeRequestCreateRouteArgs> {
  TradeRequestCreateRoute({
    _i29.Key? key,
    required int bookId,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         TradeRequestCreateRoute.name,
         args: TradeRequestCreateRouteArgs(key: key, bookId: bookId),
         rawPathParams: {'bookId': bookId},
         initialChildren: children,
       );

  static const String name = 'TradeRequestCreateRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TradeRequestCreateRouteArgs>(
        orElse:
            () => TradeRequestCreateRouteArgs(
              bookId: pathParams.getInt('bookId'),
            ),
      );
      return _i24.TradeRequestCreatePage(key: args.key, bookId: args.bookId);
    },
  );
}

class TradeRequestCreateRouteArgs {
  const TradeRequestCreateRouteArgs({this.key, required this.bookId});

  final _i29.Key? key;

  final int bookId;

  @override
  String toString() {
    return 'TradeRequestCreateRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [_i25.TradeRequestListPage]
class TradeRequestListRoute extends _i27.PageRouteInfo<void> {
  const TradeRequestListRoute({List<_i27.PageRouteInfo>? children})
    : super(TradeRequestListRoute.name, initialChildren: children);

  static const String name = 'TradeRequestListRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i25.TradeRequestListPage();
    },
  );
}

/// generated route for
/// [_i26.TradeRequestRejectPage]
class TradeRequestRejectRoute
    extends _i27.PageRouteInfo<TradeRequestRejectRouteArgs> {
  TradeRequestRejectRoute({
    _i29.Key? key,
    required String tradeRequestId,
    List<_i27.PageRouteInfo>? children,
  }) : super(
         TradeRequestRejectRoute.name,
         args: TradeRequestRejectRouteArgs(
           key: key,
           tradeRequestId: tradeRequestId,
         ),
         rawPathParams: {'tradeRequestId': tradeRequestId},
         initialChildren: children,
       );

  static const String name = 'TradeRequestRejectRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TradeRequestRejectRouteArgs>(
        orElse:
            () => TradeRequestRejectRouteArgs(
              tradeRequestId: pathParams.getString('tradeRequestId'),
            ),
      );
      return _i26.TradeRequestRejectPage(
        key: args.key,
        tradeRequestId: args.tradeRequestId,
      );
    },
  );
}

class TradeRequestRejectRouteArgs {
  const TradeRequestRejectRouteArgs({this.key, required this.tradeRequestId});

  final _i29.Key? key;

  final String tradeRequestId;

  @override
  String toString() {
    return 'TradeRequestRejectRouteArgs{key: $key, tradeRequestId: $tradeRequestId}';
  }
}
