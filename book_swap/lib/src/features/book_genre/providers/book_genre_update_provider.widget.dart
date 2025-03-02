// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/book_genre/providers/book_genre_update_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/book_genre/i_book_genre_repo.dart';
import 'package:book_swap/src/features/book_genre/book_genre_schema.schema.dart';
import 'package:book_swap/src/features/book_genre/providers/book_genre_detail_provider.dart';
import 'package:book_swap/src/features/book_genre/providers/book_genre_list_pagination_provider.dart';
import 'package:book_swap/src/features/book_genre/providers/book_genre_list_provider.dart';
import 'dart:core';

class _BookGenreUpdateFormInheritedWidget extends InheritedWidget {
  const _BookGenreUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({BookGenreId bookGenreId}) params;

  static _BookGenreUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _BookGenreUpdateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _BookGenreUpdateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class BookGenreUpdateProxyWidgetRef extends WidgetRef {
  BookGenreUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({BookGenreId bookGenreId}) get params =>
      _BookGenreUpdateFormInheritedWidget.of(context).params;

  AsyncValue<BookGenreModel>? get status => _ref.watch(
    bookGenreUpdateCallStatusProvider((bookGenreId: params.bookGenreId)),
  );

  GlobalKey<FormState> get formKey =>
      _BookGenreUpdateFormInheritedWidget.of(context).formKey;

  BookGenreUpdate get notifier =>
      _ref.read(bookGenreUpdateProvider(params.bookGenreId).notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<BookGenreModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  Selected select<Selected>(Selected Function(BookGenreUpdateParam) selector) =>
      _ref.watch(
        bookGenreUpdateProvider(
          params.bookGenreId,
        ).select((value) => selector(value.requireValue)),
      );

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

class BookGenreUpdateFormScope extends ConsumerStatefulWidget {
  const BookGenreUpdateFormScope({
    super.key,
    required this.bookGenreId,
    this.formKey,
    this.autovalidateMode,
    this.onPopInvokedWithResult,
    required this.builder,
    this.child,
    this.onSuccessed,
    this.onInitLoading,
    this.onInitError,
  }) : assert(
         child != null || builder != null,
         'Either child or builder must be provided',
       );
  final BookGenreId bookGenreId;
  final Widget Function(
    BuildContext context,
    BookGenreUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, BookGenreModel value)? onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookGenreUpdateFormScopeState();
}

class _BookGenreUpdateFormScopeState
    extends ConsumerState<BookGenreUpdateFormScope> {
  late final GlobalKey<FormState> _cachedFormKey;

  @override
  void initState() {
    super.initState();
    _cachedFormKey = widget.formKey ?? GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _cachedFormKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      bookGenreUpdateCallStatusProvider((bookGenreId: widget.bookGenreId)),
      (previous, next) {
        if (previous?.hasValue == false && next?.hasValue == true) {
          widget.onSuccessed?.call(context, next!.requireValue);
        }
      },
    );

    return _BookGenreUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (bookGenreId: widget.bookGenreId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              bookGenreUpdateProvider(
                widget.bookGenreId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    BookGenreUpdateProxyWidgetRef(ref),
                    widget.child,
                  );
                }

                return widget.child!;
              },
              error:
                  (error, stack) =>
                      widget.onInitError?.call(error, stack) ??
                      Theme.of(context)
                          .extension<KimappThemeExtension>()
                          ?.defaultErrorStateWidget
                          ?.call(context, ref, error) ??
                      const SizedBox.shrink(),
              loading: () {
                return widget.onInitLoading?.call() ??
                    Theme.of(context)
                        .extension<KimappThemeExtension>()
                        ?.defaultLoadingStateWidget
                        ?.call(context, ref) ??
                    const Center(child: CircularProgressIndicator());
              },
            );
          },
        ),
      ),
    );
  }
}

bool _debugCheckHasBookGenreUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! BookGenreUpdateFormScope &&
        context.findAncestorWidgetOfExactType<BookGenreUpdateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BookGenreUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BookGenreUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BookGenreUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class BookGenreUpdateFormParams extends ConsumerWidget {
  const BookGenreUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookGenreUpdateProxyWidgetRef ref,
    ({BookGenreId bookGenreId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookGenreUpdateForm(context);

    final params = _BookGenreUpdateFormInheritedWidget.of(context).params;
    return builder(context, BookGenreUpdateProxyWidgetRef(ref), params);
  }
}

class BookGenreUpdateFormSelect<Selected> extends ConsumerWidget {
  const BookGenreUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(BookGenreUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    BookGenreUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookGenreUpdateForm(context);

    if (onStateChanged != null) {
      final params = _BookGenreUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        bookGenreUpdateProvider(
          params.bookGenreId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = BookGenreUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class BookGenreUpdateFormState extends ConsumerWidget {
  const BookGenreUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bookGenreUpdateProvider(params.bookGenreId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    BookGenreUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    BookGenreUpdateParam? previous,
    BookGenreUpdateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookGenreUpdateForm(context);

    if (onStateChanged != null) {
      final params = _BookGenreUpdateFormInheritedWidget.of(context).params;
      ref.listen(bookGenreUpdateProvider(params.bookGenreId), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return BookGenreUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, BookGenreUpdateProxyWidgetRef(ref), child),
    );
  }
}

class BookGenreUpdateFormStatus extends ConsumerWidget {
  const BookGenreUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    BookGenreUpdateProxyWidgetRef ref,
    AsyncValue<BookGenreModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<BookGenreModel>? previous,
    AsyncValue<BookGenreModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookGenreUpdateForm(context);

    if (onChanged != null) {
      final params = _BookGenreUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        bookGenreUpdateCallStatusProvider((bookGenreId: params.bookGenreId)),
        (previous, next) {
          if (previous != next) {
            onChanged!(previous, next);
          }
        },
      );
    }
    final stateRef = BookGenreUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}
