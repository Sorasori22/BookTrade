// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/user/providers/user_detail_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/user/i_user_repo.dart';
import 'package:book_swap/src/features/user/user_schema.schema.dart';
import 'dart:core';

class _UserDetailInheritedWidget extends InheritedWidget {
  const _UserDetailInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({UserId id}) params;

  static _UserDetailInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_UserDetailInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _UserDetailInheritedWidget oldWidget) {
    return params != oldWidget.params;
  }
}

class _UserDetailProxyWidgetRef extends WidgetRef {
  _UserDetailProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  UserDetail get notifier => _ref.read(userDetailProvider(params.id).notifier);

  ({UserId id}) get params => _UserDetailInheritedWidget.of(context).params;

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

class UserDetailProviderScope extends ConsumerWidget {
  const UserDetailProviderScope({
    super.key,
    required this.id,
    this.loading,
    this.error,
    this.data,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final UserId id;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(UserModel data)? data;
  final Widget Function(
    BuildContext context,
    _UserDetailProxyWidgetRef ref,
    AsyncValue<UserModel> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<UserModel>? previous,
    AsyncValue<UserModel> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(userDetailProvider(id), onStateChanged!);
    }

    return _UserDetailInheritedWidget(
      params: (id: id),
      child: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(userDetailProvider(id));

          if (builder != null) {
            return builder!(
              context,
              _UserDetailProxyWidgetRef(ref),
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
                  'No child provided for UserDetailProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasUserDetailProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! UserDetailProviderScope &&
        context.findAncestorWidgetOfExactType<UserDetailProviderScope>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No UserDetailProviderScope found'),
        ErrorDescription(
          '${context.widget.runtimeType} widgets require a UserDetailProviderScope widget ancestor.',
        ),
      ]);
    }
    return true;
  }());
  return true;
}

class UserDetailParamsWidget extends ConsumerWidget {
  const UserDetailParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _UserDetailProxyWidgetRef ref,
    ({UserId id}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserDetailProviderScope(context);

    final params = _UserDetailInheritedWidget.of(context).params;
    return builder(context, _UserDetailProxyWidgetRef(ref), params);
  }
}

class _UserDetailStateProxyWidgetRef extends _UserDetailProxyWidgetRef {
  _UserDetailStateProxyWidgetRef(super._ref);

  UserModel get state => _ref.watch(userDetailProvider(params.id)).requireValue;

  Selected select<Selected>(Selected Function(UserModel) selector) =>
      _ref.watch(
        userDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
      );
}

class UserDetailStateWidget extends ConsumerWidget {
  const UserDetailStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(userDetailProvider(params.id))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _UserDetailStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(UserModel? previous, UserModel? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _UserDetailInheritedWidget.of(context).params;
      ref.listen(userDetailProvider(params.id), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _UserDetailStateProxyWidgetRef(ref), child);
  }
}

class UserDetailSelectWidget<Selected> extends ConsumerWidget {
  const UserDetailSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(UserModel state) selector;
  final Widget Function(
    BuildContext context,
    _UserDetailStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _UserDetailInheritedWidget.of(context).params;
      ref.listen(
        userDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _UserDetailStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
