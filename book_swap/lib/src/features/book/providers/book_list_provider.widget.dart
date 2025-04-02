// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member, unnecessary_import, unused_import
// coverage:ignore-file

import 'package:book_swap/src/features/book/providers/book_list_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/book/params/book_list_param.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/book/i_book_repo.dart';
import 'dart:core';

class _BookListInheritedWidget extends InheritedWidget {
  const _BookListInheritedWidget({required this.params, required super.child});

  final ({BookListParam param}) params;

  static _BookListInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_BookListInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _BookListInheritedWidget oldWidget) {
    return params != oldWidget.params;
  }
}

class _BookListProxyWidgetRef extends WidgetRef {
  _BookListProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  BookList get notifier => _ref.read(bookListProvider(params.param).notifier);

  ({BookListParam param}) get params =>
      _BookListInheritedWidget.of(context).params;

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

class BookListProviderScope extends ConsumerWidget {
  const BookListProviderScope({
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

  final BookListParam param;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(IList<BookModel> data)? data;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;
  final Widget Function(
    BuildContext context,
    _BookListProxyWidgetRef ref,
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
      ref.listen(bookListProvider(param), onStateChanged!);
    }

    return _BookListInheritedWidget(
      params: (param: param),
      child: Consumer(
        child: child,
        builder: (context, ref, child) {
          final state = ref.watch(bookListProvider(param));

          if (builder != null) {
            return builder!(
              context,
              _BookListProxyWidgetRef(ref),
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
                  'No child provided for BookListProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasBookListProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! BookListProviderScope &&
        context.findAncestorWidgetOfExactType<BookListProviderScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BookListProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BookListProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BookListProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class BookListParamsWidget extends ConsumerWidget {
  const BookListParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _BookListProxyWidgetRef ref,
    ({BookListParam param}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookListProviderScope(context);

    final params = _BookListInheritedWidget.of(context).params;
    return builder(context, _BookListProxyWidgetRef(ref), params);
  }
}

class _BookListStateProxyWidgetRef extends _BookListProxyWidgetRef {
  _BookListStateProxyWidgetRef(super._ref);

  Selected select<Selected>(Selected Function(IList<BookModel>) selector) =>
      _ref.watch(
        bookListProvider(
          params.param,
        ).select((value) => selector(value.requireValue)),
      );
}

class BookListStateWidget extends ConsumerWidget {
  const BookListStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bookListProvider(params.param))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _BookListStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(IList<BookModel>? previous, IList<BookModel>? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookListProviderScope(context);

    if (onStateChanged != null) {
      final params = _BookListInheritedWidget.of(context).params;
      ref.listen(bookListProvider(params.param), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _BookListStateProxyWidgetRef(ref), child);
  }
}

class BookListSelectWidget<Selected> extends ConsumerWidget {
  const BookListSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(IList<BookModel> state) selector;
  final Widget Function(
    BuildContext context,
    _BookListStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookListProviderScope(context);

    if (onStateChanged != null) {
      final params = _BookListInheritedWidget.of(context).params;
      ref.listen(
        bookListProvider(
          params.param,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _BookListStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
