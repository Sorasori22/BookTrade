// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/book_genre/providers/book_genre_detail_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/book_genre/book_genre_schema.schema.dart';
import 'package:book_swap/src/features/book_genre/i_book_genre_repo.dart';
import 'dart:core';

class _BookGenreDetailInheritedWidget extends InheritedWidget {
  const _BookGenreDetailInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({BookGenreId id}) params;

  static _BookGenreDetailInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_BookGenreDetailInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _BookGenreDetailInheritedWidget oldWidget) {
    return params != oldWidget.params;
  }
}

class _BookGenreDetailProxyWidgetRef extends WidgetRef {
  _BookGenreDetailProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  BookGenreDetail get notifier =>
      _ref.read(bookGenreDetailProvider(params.id).notifier);

  ({BookGenreId id}) get params =>
      _BookGenreDetailInheritedWidget.of(context).params;

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

class BookGenreDetailProviderScope extends ConsumerWidget {
  const BookGenreDetailProviderScope({
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

  final BookGenreId id;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(BookGenreModel data)? data;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;
  final Widget Function(
    BuildContext context,
    _BookGenreDetailProxyWidgetRef ref,
    AsyncValue<BookGenreModel> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<BookGenreModel>? previous,
    AsyncValue<BookGenreModel> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(bookGenreDetailProvider(id), onStateChanged!);
    }

    return _BookGenreDetailInheritedWidget(
      params: (id: id),
      child: Consumer(
        child: child,
        builder: (context, ref, child) {
          final state = ref.watch(bookGenreDetailProvider(id));

          if (builder != null) {
            return builder!(
              context,
              _BookGenreDetailProxyWidgetRef(ref),
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
                  'No child provided for BookGenreDetailProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasBookGenreDetailProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! BookGenreDetailProviderScope &&
        context.findAncestorWidgetOfExactType<BookGenreDetailProviderScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BookGenreDetailProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BookGenreDetailProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BookGenreDetailProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class BookGenreDetailParamsWidget extends ConsumerWidget {
  const BookGenreDetailParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _BookGenreDetailProxyWidgetRef ref,
    ({BookGenreId id}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookGenreDetailProviderScope(context);

    final params = _BookGenreDetailInheritedWidget.of(context).params;
    return builder(context, _BookGenreDetailProxyWidgetRef(ref), params);
  }
}

class _BookGenreDetailStateProxyWidgetRef
    extends _BookGenreDetailProxyWidgetRef {
  _BookGenreDetailStateProxyWidgetRef(super._ref);

  BookGenreModel get state =>
      _ref.watch(bookGenreDetailProvider(params.id)).requireValue;

  Selected select<Selected>(Selected Function(BookGenreModel) selector) =>
      _ref.watch(
        bookGenreDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
      );
}

class BookGenreDetailStateWidget extends ConsumerWidget {
  const BookGenreDetailStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bookGenreDetailProvider(params.id))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _BookGenreDetailStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(BookGenreModel? previous, BookGenreModel? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookGenreDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _BookGenreDetailInheritedWidget.of(context).params;
      ref.listen(bookGenreDetailProvider(params.id), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _BookGenreDetailStateProxyWidgetRef(ref), child);
  }
}

class BookGenreDetailSelectWidget<Selected> extends ConsumerWidget {
  const BookGenreDetailSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(BookGenreModel state) selector;
  final Widget Function(
    BuildContext context,
    _BookGenreDetailStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookGenreDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _BookGenreDetailInheritedWidget.of(context).params;
      ref.listen(
        bookGenreDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _BookGenreDetailStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
