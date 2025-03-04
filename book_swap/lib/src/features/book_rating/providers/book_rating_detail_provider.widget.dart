// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/book_rating/providers/book_rating_detail_provider.dart';
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
import 'package:book_swap/src/features/book_rating/book_rating_schema.schema.dart';
import 'package:book_swap/src/features/book_rating/i_book_rating_repo.dart';
import 'dart:core';

class _BookRatingDetailInheritedWidget extends InheritedWidget {
  const _BookRatingDetailInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({BookRatingId id}) params;

  static _BookRatingDetailInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _BookRatingDetailInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _BookRatingDetailInheritedWidget oldWidget,
  ) {
    return params != oldWidget.params;
  }
}

class _BookRatingDetailProxyWidgetRef extends WidgetRef {
  _BookRatingDetailProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  BookRatingDetail get notifier =>
      _ref.read(bookRatingDetailProvider(params.id).notifier);

  ({BookRatingId id}) get params =>
      _BookRatingDetailInheritedWidget.of(context).params;

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

class BookRatingDetailProviderScope extends ConsumerWidget {
  const BookRatingDetailProviderScope({
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

  final BookRatingId id;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(BookRatingModel data)? data;
  final bool skipLoadingOnReload;
  final bool skipLoadingOnRefresh;
  final Widget Function(
    BuildContext context,
    _BookRatingDetailProxyWidgetRef ref,
    AsyncValue<BookRatingModel> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<BookRatingModel>? previous,
    AsyncValue<BookRatingModel> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(bookRatingDetailProvider(id), onStateChanged!);
    }

    return _BookRatingDetailInheritedWidget(
      params: (id: id),
      child: Consumer(
        child: child,
        builder: (context, ref, child) {
          final state = ref.watch(bookRatingDetailProvider(id));

          if (builder != null) {
            return builder!(
              context,
              _BookRatingDetailProxyWidgetRef(ref),
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
                  'No child provided for BookRatingDetailProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasBookRatingDetailProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! BookRatingDetailProviderScope &&
        context
                .findAncestorWidgetOfExactType<
                  BookRatingDetailProviderScope
                >() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BookRatingDetailProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BookRatingDetailProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BookRatingDetailProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class BookRatingDetailParamsWidget extends ConsumerWidget {
  const BookRatingDetailParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _BookRatingDetailProxyWidgetRef ref,
    ({BookRatingId id}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingDetailProviderScope(context);

    final params = _BookRatingDetailInheritedWidget.of(context).params;
    return builder(context, _BookRatingDetailProxyWidgetRef(ref), params);
  }
}

class _BookRatingDetailStateProxyWidgetRef
    extends _BookRatingDetailProxyWidgetRef {
  _BookRatingDetailStateProxyWidgetRef(super._ref);

  BookRatingModel get state =>
      _ref.watch(bookRatingDetailProvider(params.id)).requireValue;

  Selected select<Selected>(Selected Function(BookRatingModel) selector) =>
      _ref.watch(
        bookRatingDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
      );
}

class BookRatingDetailStateWidget extends ConsumerWidget {
  const BookRatingDetailStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bookRatingDetailProvider(params.id))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _BookRatingDetailStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(BookRatingModel? previous, BookRatingModel? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _BookRatingDetailInheritedWidget.of(context).params;
      ref.listen(bookRatingDetailProvider(params.id), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _BookRatingDetailStateProxyWidgetRef(ref), child);
  }
}

class BookRatingDetailSelectWidget<Selected> extends ConsumerWidget {
  const BookRatingDetailSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(BookRatingModel state) selector;
  final Widget Function(
    BuildContext context,
    _BookRatingDetailStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _BookRatingDetailInheritedWidget.of(context).params;
      ref.listen(
        bookRatingDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _BookRatingDetailStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
