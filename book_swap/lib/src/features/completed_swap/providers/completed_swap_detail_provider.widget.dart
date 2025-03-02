// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/completed_swap/providers/completed_swap_detail_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/completed_swap/completed_swap_schema.schema.dart';
import 'package:book_swap/src/features/completed_swap/i_completed_swap_repo.dart';
import 'dart:core';

class _CompletedSwapDetailInheritedWidget extends InheritedWidget {
  const _CompletedSwapDetailInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({CompletedSwapId id}) params;

  static _CompletedSwapDetailInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _CompletedSwapDetailInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _CompletedSwapDetailInheritedWidget oldWidget,
  ) {
    return params != oldWidget.params;
  }
}

class _CompletedSwapDetailProxyWidgetRef extends WidgetRef {
  _CompletedSwapDetailProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  CompletedSwapDetail get notifier =>
      _ref.read(completedSwapDetailProvider(params.id).notifier);

  ({CompletedSwapId id}) get params =>
      _CompletedSwapDetailInheritedWidget.of(context).params;

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

class CompletedSwapDetailProviderScope extends ConsumerWidget {
  const CompletedSwapDetailProviderScope({
    super.key,
    required this.id,
    this.loading,
    this.error,
    this.data,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final CompletedSwapId id;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(CompletedSwapModel data)? data;
  final Widget Function(
    BuildContext context,
    _CompletedSwapDetailProxyWidgetRef ref,
    AsyncValue<CompletedSwapModel> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<CompletedSwapModel>? previous,
    AsyncValue<CompletedSwapModel> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(completedSwapDetailProvider(id), onStateChanged!);
    }

    return _CompletedSwapDetailInheritedWidget(
      params: (id: id),
      child: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(completedSwapDetailProvider(id));

          if (builder != null) {
            return builder!(
              context,
              _CompletedSwapDetailProxyWidgetRef(ref),
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
                  'No child provided for CompletedSwapDetailProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasCompletedSwapDetailProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! CompletedSwapDetailProviderScope &&
        context
                .findAncestorWidgetOfExactType<
                  CompletedSwapDetailProviderScope
                >() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No CompletedSwapDetailProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a CompletedSwapDetailProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct CompletedSwapDetailProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class CompletedSwapDetailParamsWidget extends ConsumerWidget {
  const CompletedSwapDetailParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _CompletedSwapDetailProxyWidgetRef ref,
    ({CompletedSwapId id}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapDetailProviderScope(context);

    final params = _CompletedSwapDetailInheritedWidget.of(context).params;
    return builder(context, _CompletedSwapDetailProxyWidgetRef(ref), params);
  }
}

class _CompletedSwapDetailStateProxyWidgetRef
    extends _CompletedSwapDetailProxyWidgetRef {
  _CompletedSwapDetailStateProxyWidgetRef(super._ref);

  CompletedSwapModel get state =>
      _ref.watch(completedSwapDetailProvider(params.id)).requireValue;

  Selected select<Selected>(Selected Function(CompletedSwapModel) selector) =>
      _ref.watch(
        completedSwapDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
      );
}

class CompletedSwapDetailStateWidget extends ConsumerWidget {
  const CompletedSwapDetailStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(completedSwapDetailProvider(params.id))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _CompletedSwapDetailStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(CompletedSwapModel? previous, CompletedSwapModel? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _CompletedSwapDetailInheritedWidget.of(context).params;
      ref.listen(completedSwapDetailProvider(params.id), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(
      context,
      _CompletedSwapDetailStateProxyWidgetRef(ref),
      child,
    );
  }
}

class CompletedSwapDetailSelectWidget<Selected> extends ConsumerWidget {
  const CompletedSwapDetailSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(CompletedSwapModel state) selector;
  final Widget Function(
    BuildContext context,
    _CompletedSwapDetailStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _CompletedSwapDetailInheritedWidget.of(context).params;
      ref.listen(
        completedSwapDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _CompletedSwapDetailStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
