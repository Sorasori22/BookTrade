// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/book/providers/my_book_list_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/book/i_book_repo.dart';
import 'package:dartx/dartx.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/core/account/current_account_provider.dart';
import 'package:book_swap/src/features/book/params/book_list_param.dart';
import 'dart:core';

class _MyBookListProxyWidgetRef extends WidgetRef {
  _MyBookListProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  MyBookList get notifier => _ref.read(myBookListProvider.notifier);

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

class MyBookListProviderScope extends ConsumerWidget {
  const MyBookListProviderScope({
    super.key,
    this.loading,
    this.error,
    this.data,
    this.skipLoadingOnReload = true,
    this.skipLoadingOnRefresh = true,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(IList<BookModel> data)? data;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;
  final Widget Function(
    BuildContext context,
    _MyBookListProxyWidgetRef ref,
    AsyncValue<IList<BookModel>> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<IList<BookModel>>? previous,
    AsyncValue<IList<BookModel>> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(myBookListProvider, onStateChanged!);
    }

    return Consumer(
      child: child,
      builder: (context, ref, child) {
        final state = ref.watch(myBookListProvider);

        if (builder != null) {
          return builder!(
            context,
            _MyBookListProxyWidgetRef(ref),
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
                'No child provided for MyBookListProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasMyBookListProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! MyBookListProviderScope &&
        context.findAncestorWidgetOfExactType<MyBookListProviderScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No MyBookListProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a MyBookListProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct MyBookListProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class _MyBookListStateProxyWidgetRef extends _MyBookListProxyWidgetRef {
  _MyBookListStateProxyWidgetRef(super._ref);

  Selected select<Selected>(Selected Function(IList<BookModel>) selector) =>
      _ref.watch(
        myBookListProvider.select((value) => selector(value.requireValue)),
      );
}

class MyBookListStateWidget extends ConsumerWidget {
  const MyBookListStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(myBookListProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _MyBookListStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(IList<BookModel>? previous, IList<BookModel>? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMyBookListProviderScope(context);

    if (onStateChanged != null) {
      ref.listen(myBookListProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _MyBookListStateProxyWidgetRef(ref), child);
  }
}

class MyBookListSelectWidget<Selected> extends ConsumerWidget {
  const MyBookListSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(IList<BookModel> state) selector;
  final Widget Function(
    BuildContext context,
    _MyBookListStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMyBookListProviderScope(context);

    if (onStateChanged != null) {
      ref.listen(
        myBookListProvider.select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _MyBookListStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
