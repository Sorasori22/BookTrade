// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/book/providers/book_detail_provider.dart';
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
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/book/i_book_repo.dart';
import 'dart:core';

class _BookDetailInheritedWidget extends InheritedWidget {
  const _BookDetailInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({BookId id}) params;

  static _BookDetailInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_BookDetailInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _BookDetailInheritedWidget oldWidget) {
    return params != oldWidget.params;
  }
}

class _BookDetailProxyWidgetRef extends WidgetRef {
  _BookDetailProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  BookDetail get notifier => _ref.read(bookDetailProvider(params.id).notifier);

  ({BookId id}) get params => _BookDetailInheritedWidget.of(context).params;

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

class BookDetailProviderScope extends ConsumerWidget {
  const BookDetailProviderScope({
    super.key,
    required this.id,
    this.loading,
    this.error,
    this.data,
    this.skipLoadingOnReload = true,
    this.skipLoadingOnRefresh = true,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final BookId id;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(BookModel data)? data;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;
  final Widget Function(
    BuildContext context,
    _BookDetailProxyWidgetRef ref,
    AsyncValue<BookModel> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<BookModel>? previous,
    AsyncValue<BookModel> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(bookDetailProvider(id), onStateChanged!);
    }

    return _BookDetailInheritedWidget(
      params: (id: id),
      child: Consumer(
        child: child,
        builder: (context, ref, child) {
          final state = ref.watch(bookDetailProvider(id));

          if (builder != null) {
            return builder!(
              context,
              _BookDetailProxyWidgetRef(ref),
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
                  'No child provided for BookDetailProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasBookDetailProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! BookDetailProviderScope &&
        context.findAncestorWidgetOfExactType<BookDetailProviderScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BookDetailProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BookDetailProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BookDetailProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class BookDetailParamsWidget extends ConsumerWidget {
  const BookDetailParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _BookDetailProxyWidgetRef ref,
    ({BookId id}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookDetailProviderScope(context);

    final params = _BookDetailInheritedWidget.of(context).params;
    return builder(context, _BookDetailProxyWidgetRef(ref), params);
  }
}

class _BookDetailStateProxyWidgetRef extends _BookDetailProxyWidgetRef {
  _BookDetailStateProxyWidgetRef(super._ref);

  BookModel get state => _ref.watch(bookDetailProvider(params.id)).requireValue;

  Selected select<Selected>(Selected Function(BookModel) selector) =>
      _ref.watch(
        bookDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
      );
}

class BookDetailStateWidget extends ConsumerWidget {
  const BookDetailStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bookDetailProvider(params.id))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _BookDetailStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(BookModel? previous, BookModel? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _BookDetailInheritedWidget.of(context).params;
      ref.listen(bookDetailProvider(params.id), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _BookDetailStateProxyWidgetRef(ref), child);
  }
}

class BookDetailSelectWidget<Selected> extends ConsumerWidget {
  const BookDetailSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(BookModel state) selector;
  final Widget Function(
    BuildContext context,
    _BookDetailStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _BookDetailInheritedWidget.of(context).params;
      ref.listen(
        bookDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _BookDetailStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
