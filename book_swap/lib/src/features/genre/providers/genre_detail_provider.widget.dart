// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/genre/providers/genre_detail_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/genre/genre_schema.schema.dart';
import 'package:book_swap/src/features/genre/i_genre_repo.dart';
import 'dart:core';

class _GenreDetailInheritedWidget extends InheritedWidget {
  const _GenreDetailInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({GenreId id}) params;

  static _GenreDetailInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_GenreDetailInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _GenreDetailInheritedWidget oldWidget) {
    return params != oldWidget.params;
  }
}

class _GenreDetailProxyWidgetRef extends WidgetRef {
  _GenreDetailProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  GenreDetail get notifier =>
      _ref.read(genreDetailProvider(params.id).notifier);

  ({GenreId id}) get params => _GenreDetailInheritedWidget.of(context).params;

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

class GenreDetailProviderScope extends ConsumerWidget {
  const GenreDetailProviderScope({
    super.key,
    required this.id,
    this.loading,
    this.error,
    this.data,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final GenreId id;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(GenreModel data)? data;
  final Widget Function(
    BuildContext context,
    _GenreDetailProxyWidgetRef ref,
    AsyncValue<GenreModel> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<GenreModel>? previous,
    AsyncValue<GenreModel> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(genreDetailProvider(id), onStateChanged!);
    }

    return _GenreDetailInheritedWidget(
      params: (id: id),
      child: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(genreDetailProvider(id));

          if (builder != null) {
            return builder!(
              context,
              _GenreDetailProxyWidgetRef(ref),
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
                  'No child provided for GenreDetailProviderScope. Empty SizedBox will be returned.',
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

bool _debugCheckHasGenreDetailProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! GenreDetailProviderScope &&
        context.findAncestorWidgetOfExactType<GenreDetailProviderScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No GenreDetailProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a GenreDetailProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct GenreDetailProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class GenreDetailParamsWidget extends ConsumerWidget {
  const GenreDetailParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _GenreDetailProxyWidgetRef ref,
    ({GenreId id}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreDetailProviderScope(context);

    final params = _GenreDetailInheritedWidget.of(context).params;
    return builder(context, _GenreDetailProxyWidgetRef(ref), params);
  }
}

class _GenreDetailStateProxyWidgetRef extends _GenreDetailProxyWidgetRef {
  _GenreDetailStateProxyWidgetRef(super._ref);

  GenreModel get state =>
      _ref.watch(genreDetailProvider(params.id)).requireValue;

  Selected select<Selected>(Selected Function(GenreModel) selector) =>
      _ref.watch(
        genreDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
      );
}

class GenreDetailStateWidget extends ConsumerWidget {
  const GenreDetailStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(genreDetailProvider(params.id))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _GenreDetailStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(GenreModel? previous, GenreModel? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _GenreDetailInheritedWidget.of(context).params;
      ref.listen(genreDetailProvider(params.id), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _GenreDetailStateProxyWidgetRef(ref), child);
  }
}

class GenreDetailSelectWidget<Selected> extends ConsumerWidget {
  const GenreDetailSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(GenreModel state) selector;
  final Widget Function(
    BuildContext context,
    _GenreDetailStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _GenreDetailInheritedWidget.of(context).params;
      ref.listen(
        genreDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _GenreDetailStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}
