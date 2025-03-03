// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/wishlist_item/providers/wishlist_item_detail_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/wishlist_item/wishlist_item_schema.schema.dart';
import 'package:book_swap/src/features/wishlist_item/i_wishlist_item_repo.dart';
import 'dart:core';

class _WishlistItemDetailInheritedWidget extends InheritedWidget {
  const _WishlistItemDetailInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({WishlistItemId id}) params;

  static _WishlistItemDetailInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _WishlistItemDetailInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _WishlistItemDetailInheritedWidget oldWidget,
  ) {
    return params != oldWidget.params;
  }
}

class _WishlistItemDetailProxyWidgetRef extends WidgetRef {
  _WishlistItemDetailProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  WishlistItemDetail get notifier =>
      _ref.read(wishlistItemDetailProvider(params.id).notifier);

  ({WishlistItemId id}) get params =>
      _WishlistItemDetailInheritedWidget.of(context).params;

  @override
  BuildContext get context => _ref.context;

  @override
  bool exists(ProviderBase<Object?> provider) => _ref.exists(provider);

  @override
  void invalidate(ProviderOrFamily provider) => _ref.invalidate(provider);

  @override
  void listen<T>(
    ProviderListenable<T> provider,
    void Function(T?, T) listener, {
    void Function(Object, StackTrace)? onError,
  }) => _ref.listen(provider, listener, onError: onError);

  @override
  ProviderSubscription<T> listenManual<T>(
    ProviderListenable<T> provider,
    void Function(T?, T) listener, {
    void Function(Object, StackTrace)? onError,
    bool fireImmediately = false,
  }) => _ref.listenManual(
    provider,
    listener,
    onError: onError,
    fireImmediately: fireImmediately,
  );

  @override
  T read<T>(ProviderListenable<T> provider) => _ref.read(provider);

  @override
  State refresh<State>(Refreshable<State> provider) => _ref.refresh(provider);

  @override
  T watch<T>(ProviderListenable<T> provider) => _ref.watch(provider);
}

class WishlistItemDetailProviderScope extends ConsumerWidget {
  const WishlistItemDetailProviderScope({
    super.key,
    required this.id,
    this.loading,
    this.error,
    this.data,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final WishlistItemId id;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(WishlistItemModel data)? data;
  final Widget Function(
    BuildContext context,
    _WishlistItemDetailProxyWidgetRef ref,
    AsyncValue<WishlistItemModel> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<WishlistItemModel>? previous,
    AsyncValue<WishlistItemModel> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(wishlistItemDetailProvider(id), onStateChanged!);
    }

    return _WishlistItemDetailInheritedWidget(
      params: (id: id),
      child: Consumer(
        child: child,
        builder: (context, ref, child) {
          final state = ref.watch(wishlistItemDetailProvider(id));

          if (builder != null) {
            return builder!(
              context,
              _WishlistItemDetailProxyWidgetRef(ref),
              state,
              child,
            );
          }

          final themeExtension =
              Theme.of(context).extension<KimappThemeExtension>();
          return state.when(
            data: (data) {
              final result = this.data?.call(data) ?? child;
              if (result == null) {
                debugPrint(
                  'No child provided for WishlistItemDetailProviderScope. Empty SizedBox will be returned.',
                );
                return const SizedBox.shrink();
              }
              return result;
            },
            error:
                (error, stack) =>
                    this.error?.call(error, stack) ??
                    themeExtension?.defaultErrorStateWidget?.call(
                      context,
                      ref,
                      error,
                    ) ??
                    const SizedBox.shrink(),
            loading:
                () =>
                    loading?.call() ??
                    themeExtension?.defaultLoadingStateWidget?.call(
                      context,
                      ref,
                    ) ??
                    const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

bool _debugCheckHasWishlistItemDetailProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! WishlistItemDetailProviderScope &&
        context
                .findAncestorWidgetOfExactType<
                  WishlistItemDetailProviderScope
                >() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No WishlistItemDetailProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a WishlistItemDetailProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct WishlistItemDetailProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class WishlistItemDetailParamsWidget extends ConsumerWidget {
  const WishlistItemDetailParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _WishlistItemDetailProxyWidgetRef ref,
    ({WishlistItemId id}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemDetailProviderScope(context);

    final params = _WishlistItemDetailInheritedWidget.of(context).params;
    return builder(context, _WishlistItemDetailProxyWidgetRef(ref), params);
  }
}

class _WishlistItemDetailStateProxyWidgetRef
    extends _WishlistItemDetailProxyWidgetRef {
  _WishlistItemDetailStateProxyWidgetRef(super._ref);

  WishlistItemModel get state =>
      _ref.watch(wishlistItemDetailProvider(params.id)).requireValue;

  Selected select<Selected>(Selected Function(WishlistItemModel) selector) =>
      _ref.watch(
        wishlistItemDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
      );
}

class WishlistItemDetailStateWidget extends ConsumerWidget {
  const WishlistItemDetailStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(wishlistItemDetailProvider(params.id))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _WishlistItemDetailStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(WishlistItemModel? previous, WishlistItemModel? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _WishlistItemDetailInheritedWidget.of(context).params;
      ref.listen(wishlistItemDetailProvider(params.id), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _WishlistItemDetailStateProxyWidgetRef(ref), child);
  }
}

class WishlistItemDetailSelectWidget<Selected> extends ConsumerWidget {
  const WishlistItemDetailSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(WishlistItemModel state) selector;
  final Widget Function(
    BuildContext context,
    _WishlistItemDetailStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _WishlistItemDetailInheritedWidget.of(context).params;
      ref.listen(
        wishlistItemDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _WishlistItemDetailStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
