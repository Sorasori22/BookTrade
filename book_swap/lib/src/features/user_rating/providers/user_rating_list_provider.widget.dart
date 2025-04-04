// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/user_rating/providers/user_rating_list_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/user_rating/params/user_rating_list_param.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/user_rating/i_user_rating_repo.dart';
import 'package:book_swap/src/features/user_rating/user_rating_schema.schema.dart';
import 'dart:core';

class _UserRatingListInheritedWidget extends InheritedWidget {
  const _UserRatingListInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({UserRatingListParam param}) params;

  static _UserRatingListInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_UserRatingListInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _UserRatingListInheritedWidget oldWidget) {
    return params != oldWidget.params;
  }
}

class _UserRatingListProxyWidgetRef extends WidgetRef {
  _UserRatingListProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  UserRatingList get notifier =>
      _ref.read(userRatingListProvider(params.param).notifier);

  ({UserRatingListParam param}) get params =>
      _UserRatingListInheritedWidget.of(context).params;

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

class UserRatingListProviderScope extends ConsumerWidget {
  const UserRatingListProviderScope({
    super.key,
    required this.param,
    this.loading,
    this.error,
    this.data,
    this.skipLoadingOnReload = true,
    this.skipLoadingOnRefresh = true,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final UserRatingListParam param;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(IList<UserRatingModel> data)? data;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;
  final Widget Function(
    BuildContext context,
    _UserRatingListProxyWidgetRef ref,
    AsyncValue<IList<UserRatingModel>> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<IList<UserRatingModel>>? previous,
    AsyncValue<IList<UserRatingModel>> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(userRatingListProvider(param), onStateChanged!);
    }

    return _UserRatingListInheritedWidget(
      params: (param: param),
      child: Consumer(
        child: child,
        builder: (context, ref, child) {
          final state = ref.watch(userRatingListProvider(param));

          if (builder != null) {
            return builder!(
              context,
              _UserRatingListProxyWidgetRef(ref),
              state,
              child,
            );
          }

          final themeExtension =
              Theme.of(context).extension<KimappThemeExtension>();
          return state.when(
            skipLoadingOnReload: skipLoadingOnReload,
            skipLoadingOnRefresh: skipLoadingOnRefresh,
            data: (data) {
              final result = this.data?.call(data) ?? child;
              if (result == null) {
                debugPrint(
                  'No child provided for UserRatingListProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasUserRatingListProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! UserRatingListProviderScope &&
        context.findAncestorWidgetOfExactType<UserRatingListProviderScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No UserRatingListProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a UserRatingListProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct UserRatingListProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class UserRatingListParamsWidget extends ConsumerWidget {
  const UserRatingListParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _UserRatingListProxyWidgetRef ref,
    ({UserRatingListParam param}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingListProviderScope(context);

    final params = _UserRatingListInheritedWidget.of(context).params;
    return builder(context, _UserRatingListProxyWidgetRef(ref), params);
  }
}

class _UserRatingListStateProxyWidgetRef extends _UserRatingListProxyWidgetRef {
  _UserRatingListStateProxyWidgetRef(super._ref);

  Selected select<Selected>(
    Selected Function(IList<UserRatingModel>) selector,
  ) => _ref.watch(
    userRatingListProvider(
      params.param,
    ).select((value) => selector(value.requireValue)),
  );
}

class UserRatingListStateWidget extends ConsumerWidget {
  const UserRatingListStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(userRatingListProvider(params.param))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _UserRatingListStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    IList<UserRatingModel>? previous,
    IList<UserRatingModel>? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingListProviderScope(context);

    if (onStateChanged != null) {
      final params = _UserRatingListInheritedWidget.of(context).params;
      ref.listen(userRatingListProvider(params.param), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _UserRatingListStateProxyWidgetRef(ref), child);
  }
}

class UserRatingListSelectWidget<Selected> extends ConsumerWidget {
  const UserRatingListSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(IList<UserRatingModel> state) selector;
  final Widget Function(
    BuildContext context,
    _UserRatingListStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingListProviderScope(context);

    if (onStateChanged != null) {
      final params = _UserRatingListInheritedWidget.of(context).params;
      ref.listen(
        userRatingListProvider(
          params.param,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _UserRatingListStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
