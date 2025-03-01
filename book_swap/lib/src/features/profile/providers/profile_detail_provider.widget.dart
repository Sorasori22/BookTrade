// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/profile/providers/profile_detail_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/profile/i_profile_repo.dart';
import 'dart:core';

class _ProfileDetailInheritedWidget extends InheritedWidget {
  const _ProfileDetailInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({ProfileId id}) params;

  static _ProfileDetailInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_ProfileDetailInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _ProfileDetailInheritedWidget oldWidget) {
    return params != oldWidget.params;
  }
}

class _ProfileDetailProxyWidgetRef extends WidgetRef {
  _ProfileDetailProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ProfileDetail get notifier =>
      _ref.read(profileDetailProvider(params.id).notifier);

  ({ProfileId id}) get params =>
      _ProfileDetailInheritedWidget.of(context).params;

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

class ProfileDetailProviderScope extends ConsumerWidget {
  const ProfileDetailProviderScope({
    super.key,
    required this.id,
    this.loading,
    this.error,
    this.data,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final ProfileId id;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(ProfileModel data)? data;
  final Widget Function(
    BuildContext context,
    _ProfileDetailProxyWidgetRef ref,
    AsyncValue<ProfileModel> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<ProfileModel>? previous,
    AsyncValue<ProfileModel> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(profileDetailProvider(id), onStateChanged!);
    }

    return _ProfileDetailInheritedWidget(
      params: (id: id),
      child: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(profileDetailProvider(id));

          if (builder != null) {
            return builder!(
              context,
              _ProfileDetailProxyWidgetRef(ref),
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
                  'No child provided for ProfileDetailProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasProfileDetailProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! ProfileDetailProviderScope &&
        context.findAncestorWidgetOfExactType<ProfileDetailProviderScope>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No ProfileDetailProviderScope found'),
        ErrorDescription(
          '${context.widget.runtimeType} widgets require a ProfileDetailProviderScope widget ancestor.',
        ),
      ]);
    }
    return true;
  }());
  return true;
}

class ProfileDetailParamsWidget extends ConsumerWidget {
  const ProfileDetailParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _ProfileDetailProxyWidgetRef ref,
    ({ProfileId id}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileDetailProviderScope(context);

    final params = _ProfileDetailInheritedWidget.of(context).params;
    return builder(context, _ProfileDetailProxyWidgetRef(ref), params);
  }
}

class _ProfileDetailStateProxyWidgetRef extends _ProfileDetailProxyWidgetRef {
  _ProfileDetailStateProxyWidgetRef(super._ref);

  ProfileModel get state =>
      _ref.watch(profileDetailProvider(params.id)).requireValue;

  Selected select<Selected>(Selected Function(ProfileModel) selector) =>
      _ref.watch(
        profileDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
      );
}

class ProfileDetailStateWidget extends ConsumerWidget {
  const ProfileDetailStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(profileDetailProvider(params.id))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _ProfileDetailStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(ProfileModel? previous, ProfileModel? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _ProfileDetailInheritedWidget.of(context).params;
      ref.listen(profileDetailProvider(params.id), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _ProfileDetailStateProxyWidgetRef(ref), child);
  }
}

class ProfileDetailSelectWidget<Selected> extends ConsumerWidget {
  const ProfileDetailSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(ProfileModel state) selector;
  final Widget Function(
    BuildContext context,
    _ProfileDetailStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _ProfileDetailInheritedWidget.of(context).params;
      ref.listen(
        profileDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _ProfileDetailStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
