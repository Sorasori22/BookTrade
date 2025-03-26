// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member, unnecessary_import, unused_import
// coverage:ignore-file

import 'package:book_swap/src/features/book_rating/providers/book_rating_update_provider.dart';
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
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/book_rating/book_rating_schema.schema.dart';
import 'package:book_swap/src/features/book_rating/i_book_rating_repo.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_detail_provider.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_list_pagination_provider.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_list_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension BookRatingUpdateFieldUpdater on BookRatingUpdate {
  /// Update the rating field of BookRatingUpdateParam class.
  void updateRating(int? newValue) =>
      state = state.whenData((state) => state.copyWith(rating: newValue));

  /// Update the comment field of BookRatingUpdateParam class.
  void updateComment(String? newValue) =>
      state = state.whenData(
        (state) => state.copyWith(
          comment: newValue == null || newValue.isEmpty ? null : newValue,
        ),
      );
}

class _BookRatingUpdateFormInheritedWidget extends InheritedWidget {
  const _BookRatingUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({BookRatingId bookRatingId}) params;

  static _BookRatingUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _BookRatingUpdateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _BookRatingUpdateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class BookRatingUpdateProxyWidgetRef extends WidgetRef {
  BookRatingUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({BookRatingId bookRatingId}) get params =>
      _BookRatingUpdateFormInheritedWidget.of(context).params;

  AsyncValue<BookRatingModel>? get status => _ref.watch(
    bookRatingUpdateCallStatusProvider((bookRatingId: params.bookRatingId)),
  );

  GlobalKey<FormState> get formKey =>
      _BookRatingUpdateFormInheritedWidget.of(context).formKey;

  BookRatingUpdate get notifier =>
      _ref.read(bookRatingUpdateProvider(params.bookRatingId).notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<BookRatingModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  Selected select<Selected>(
    Selected Function(BookRatingUpdateParam) selector,
  ) => _ref.watch(
    bookRatingUpdateProvider(
      params.bookRatingId,
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

class BookRatingUpdateFormScope extends ConsumerStatefulWidget {
  const BookRatingUpdateFormScope({
    super.key,
    required this.bookRatingId,
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
  final BookRatingId bookRatingId;
  final Widget Function(
    BuildContext context,
    BookRatingUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, BookRatingModel value)? onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookRatingUpdateFormScopeState();
}

class _BookRatingUpdateFormScopeState
    extends ConsumerState<BookRatingUpdateFormScope> {
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
      bookRatingUpdateCallStatusProvider((bookRatingId: widget.bookRatingId)),
      (previous, next) {
        if (previous?.hasValue == false && next?.hasValue == true) {
          widget.onSuccessed?.call(context, next!.requireValue);
        }
      },
    );

    return _BookRatingUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (bookRatingId: widget.bookRatingId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              bookRatingUpdateProvider(
                widget.bookRatingId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              skipLoadingOnReload: true,
              skipLoadingOnRefresh: true,
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    BookRatingUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasBookRatingUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! BookRatingUpdateFormScope &&
        context.findAncestorWidgetOfExactType<BookRatingUpdateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BookRatingUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BookRatingUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BookRatingUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class BookRatingUpdateFormParams extends ConsumerWidget {
  const BookRatingUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookRatingUpdateProxyWidgetRef ref,
    ({BookRatingId bookRatingId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingUpdateForm(context);

    final params = _BookRatingUpdateFormInheritedWidget.of(context).params;
    return builder(context, BookRatingUpdateProxyWidgetRef(ref), params);
  }
}

class BookRatingUpdateFormSelect<Selected> extends ConsumerWidget {
  const BookRatingUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(BookRatingUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    BookRatingUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingUpdateForm(context);

    if (onStateChanged != null) {
      final params = _BookRatingUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        bookRatingUpdateProvider(
          params.bookRatingId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = BookRatingUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class BookRatingUpdateFormState extends ConsumerWidget {
  const BookRatingUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bookRatingUpdateProvider(params.bookRatingId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    BookRatingUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    BookRatingUpdateParam? previous,
    BookRatingUpdateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingUpdateForm(context);

    if (onStateChanged != null) {
      final params = _BookRatingUpdateFormInheritedWidget.of(context).params;
      ref.listen(bookRatingUpdateProvider(params.bookRatingId), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return BookRatingUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, BookRatingUpdateProxyWidgetRef(ref), child),
    );
  }
}

class BookRatingUpdateFormStatus extends ConsumerWidget {
  const BookRatingUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    BookRatingUpdateProxyWidgetRef ref,
    AsyncValue<BookRatingModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<BookRatingModel>? previous,
    AsyncValue<BookRatingModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingUpdateForm(context);

    if (onChanged != null) {
      final params = _BookRatingUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        bookRatingUpdateCallStatusProvider((bookRatingId: params.bookRatingId)),
        (previous, next) {
          if (previous != next) {
            onChanged!(previous, next);
          }
        },
      );
    }
    final stateRef = BookRatingUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class BookRatingUpdateRatingProxyWidgetRef
    extends BookRatingUpdateProxyWidgetRef {
  BookRatingUpdateRatingProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int? get rating => select((state) => state.rating);

  /// Update the field value directly.
  void updateRating(int? newValue) => notifier.updateRating(newValue);
}

class BookRatingUpdateRatingField extends ConsumerWidget {
  const BookRatingUpdateRatingField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookRatingUpdateRatingProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingUpdateForm(context);

    final proxy = BookRatingUpdateRatingProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BookRatingUpdateCommentProxyWidgetRef
    extends BookRatingUpdateProxyWidgetRef {
  BookRatingUpdateCommentProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get comment => select((state) => state.comment);

  /// Update the field value directly.
  void updateComment(String? newValue) => notifier.updateComment(newValue);
}

class BookRatingUpdateCommentField extends HookConsumerWidget {
  const BookRatingUpdateCommentField({
    super.key,
    this.textController,
    this.onChanged,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(
    BuildContext context,
    BookRatingUpdateCommentProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingUpdateForm(context);

    final params = _BookRatingUpdateFormInheritedWidget.of(context).params;

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue =
        ref
            .read(bookRatingUpdateProvider(params.bookRatingId))
            .valueOrNull
            ?.comment;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(
      bookRatingUpdateProvider(
        params.bookRatingId,
      ).select((value) => value.valueOrNull?.comment),
      (previous, next) {
        if (previous != next && controller.text != next) {
          controller.text = next ?? "";
        }
        onChanged?.call(previous, next ?? "");
      },
    );

    // Initialize external controller if provided
    useEffect(() {
      if (textController != null &&
          initialValue != null &&
          textController!.text.isEmpty) {
        textController!.text = initialValue;
      }
      return null;
    }, []);

    // Setup text listener
    useEffect(() {
      void listener() {
        final currentValue =
            ref
                .read(bookRatingUpdateProvider(params.bookRatingId))
                .valueOrNull
                ?.comment;
        if (currentValue != controller.text) {
          ref
              .read(bookRatingUpdateProvider(params.bookRatingId).notifier)
              .updateComment(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = BookRatingUpdateCommentProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}
