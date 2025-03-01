// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/completed_swap/providers/completed_swap_list_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/core/helpers/ilist_provider_helper.dart';
import 'package:book_swap/src/features/completed_swap/i_completed_swap_repo.dart';
import 'package:book_swap/src/features/completed_swap/completed_swap_schema.schema.dart';
import 'dart:core';

class _CompletedSwapListProxyWidgetRef extends WidgetRef {
  _CompletedSwapListProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  CompletedSwapList get notifier =>
      _ref.read(completedSwapListProvider.notifier);

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

class CompletedSwapListProviderScope extends ConsumerWidget {
  const CompletedSwapListProviderScope({
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
  final Widget Function(IList<CompletedSwapModel> data)? data;
  final Widget Function(
    BuildContext context,
    _CompletedSwapListProxyWidgetRef ref,
    AsyncValue<IList<CompletedSwapModel>> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<IList<CompletedSwapModel>>? previous,
    AsyncValue<IList<CompletedSwapModel>> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(completedSwapListProvider, onStateChanged!);
    }

    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(completedSwapListProvider);

        if (builder != null) {
          return builder!(
            context,
            _CompletedSwapListProxyWidgetRef(ref),
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
                'No child provided for CompletedSwapListProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasCompletedSwapListProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! CompletedSwapListProviderScope &&
        context
                .findAncestorWidgetOfExactType<
                  CompletedSwapListProviderScope
                >() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No CompletedSwapListProviderScope found'),
        ErrorDescription(
          '${context.widget.runtimeType} widgets require a CompletedSwapListProviderScope widget ancestor.',
        ),
      ]);
    }
    return true;
  }());
  return true;
}

class _CompletedSwapListStateProxyWidgetRef
    extends _CompletedSwapListProxyWidgetRef {
  _CompletedSwapListStateProxyWidgetRef(super._ref);

  IList<CompletedSwapModel> get state =>
      _ref.watch(completedSwapListProvider).requireValue;

  Selected select<Selected>(
    Selected Function(IList<CompletedSwapModel>) selector,
  ) => _ref.watch(
    completedSwapListProvider.select((value) => selector(value.requireValue)),
  );
}

class CompletedSwapListStateWidget extends ConsumerWidget {
  const CompletedSwapListStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(completedSwapListProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _CompletedSwapListStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    IList<CompletedSwapModel>? previous,
    IList<CompletedSwapModel>? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapListProviderScope(context);

    if (onStateChanged != null) {
      ref.listen(completedSwapListProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _CompletedSwapListStateProxyWidgetRef(ref), child);
  }
}

class CompletedSwapListSelectWidget<Selected> extends ConsumerWidget {
  const CompletedSwapListSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(IList<CompletedSwapModel> state) selector;
  final Widget Function(
    BuildContext context,
    _CompletedSwapListStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapListProviderScope(context);

    if (onStateChanged != null) {
      ref.listen(
        completedSwapListProvider.select(
          (value) => selector(value.requireValue),
        ),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _CompletedSwapListStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
