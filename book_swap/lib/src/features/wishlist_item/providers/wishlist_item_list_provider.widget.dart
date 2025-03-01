// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/wishlist_item/providers/wishlist_item_list_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/core/helpers/ilist_provider_helper.dart';
import 'package:book_swap/src/features/wishlist_item/i_wishlist_item_repo.dart';
import 'package:book_swap/src/features/wishlist_item/wishlist_item_schema.schema.dart';
import 'dart:core';

class _WishlistItemListProxyWidgetRef extends WidgetRef {
  _WishlistItemListProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  WishlistItemList get notifier => _ref.read(wishlistItemListProvider.notifier);

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

class WishlistItemListProviderScope extends ConsumerWidget {
  const WishlistItemListProviderScope({
    super.key,
    this.loading,
    this.error,
    this.data,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(IList<WishlistItemModel> data)? data;
  final Widget Function(
    BuildContext context,
    _WishlistItemListProxyWidgetRef ref,
    AsyncValue<IList<WishlistItemModel>> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<IList<WishlistItemModel>>? previous,
    AsyncValue<IList<WishlistItemModel>> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(wishlistItemListProvider, onStateChanged!);
    }

    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(wishlistItemListProvider);

        if (builder != null) {
          return builder!(
            context,
            _WishlistItemListProxyWidgetRef(ref),
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
                'No child provided for WishlistItemListProviderScope. Empty SizedBox will be returned.',
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
    );
  }
}

bool _debugCheckHasWishlistItemListProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! WishlistItemListProviderScope &&
        context
                .findAncestorWidgetOfExactType<
                  WishlistItemListProviderScope
                >() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No WishlistItemListProviderScope found'),
        ErrorDescription(
          '${context.widget.runtimeType} widgets require a WishlistItemListProviderScope widget ancestor.',
        ),
      ]);
    }
    return true;
  }());
  return true;
}

class _WishlistItemListStateProxyWidgetRef
    extends _WishlistItemListProxyWidgetRef {
  _WishlistItemListStateProxyWidgetRef(super._ref);

  IList<WishlistItemModel> get state =>
      _ref.watch(wishlistItemListProvider).requireValue;

  Selected select<Selected>(
    Selected Function(IList<WishlistItemModel>) selector,
  ) => _ref.watch(
    wishlistItemListProvider.select((value) => selector(value.requireValue)),
  );
}

class WishlistItemListStateWidget extends ConsumerWidget {
  const WishlistItemListStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(wishlistItemListProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _WishlistItemListStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    IList<WishlistItemModel>? previous,
    IList<WishlistItemModel>? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemListProviderScope(context);

    if (onStateChanged != null) {
      ref.listen(wishlistItemListProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _WishlistItemListStateProxyWidgetRef(ref), child);
  }
}

class WishlistItemListSelectWidget<Selected> extends ConsumerWidget {
  const WishlistItemListSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(IList<WishlistItemModel> state) selector;
  final Widget Function(
    BuildContext context,
    _WishlistItemListStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemListProviderScope(context);

    if (onStateChanged != null) {
      ref.listen(
        wishlistItemListProvider.select(
          (value) => selector(value.requireValue),
        ),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _WishlistItemListStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
