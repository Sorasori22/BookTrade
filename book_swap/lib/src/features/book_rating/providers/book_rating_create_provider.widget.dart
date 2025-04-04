// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/book_rating/providers/book_rating_create_provider.dart';
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
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/book_rating/book_rating_schema.schema.dart';
import 'package:book_swap/src/features/book_rating/i_book_rating_repo.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_list_pagination_provider.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_list_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension BookRatingCreateFieldUpdater on BookRatingCreate {
  /// Update the userId field of BookRatingCreateParam class.
  void updateUserId(ProfileId newValue) =>
      state = state.copyWith(userId: newValue);

  /// Update the bookId field of BookRatingCreateParam class.
  void updateBookId(BookId newValue) =>
      state = state.copyWith(bookId: newValue);

  /// Update the rating field of BookRatingCreateParam class.
  void updateRating(int newValue) => state = state.copyWith(rating: newValue);

  /// Update the comment field of BookRatingCreateParam class.
  void updateComment(String? newValue) =>
      state = state.copyWith(
        comment: newValue == null || newValue.isEmpty ? null : newValue,
      );
}

class _BookRatingCreateFormInheritedWidget extends InheritedWidget {
  const _BookRatingCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _BookRatingCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _BookRatingCreateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _BookRatingCreateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey;
  }
}

class BookRatingCreateProxyWidgetRef extends WidgetRef {
  BookRatingCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<BookRatingModel>? get status =>
      _ref.watch(bookRatingCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _BookRatingCreateFormInheritedWidget.of(context).formKey;

  BookRatingCreate get notifier => _ref.read(bookRatingCreateProvider.notifier);

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
    Selected Function(BookRatingCreateParam) selector,
  ) => _ref.watch(bookRatingCreateProvider.select((value) => selector(value)));

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

class BookRatingCreateFormScope extends ConsumerStatefulWidget {
  const BookRatingCreateFormScope({
    super.key,
    this.formKey,
    this.autovalidateMode,
    this.onPopInvokedWithResult,
    required this.builder,
    this.child,
    this.onSuccessed,
  }) : assert(
         child != null || builder != null,
         'Either child or builder must be provided',
       );

  final Widget Function(
    BuildContext context,
    BookRatingCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, BookRatingModel value)? onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookRatingCreateFormScopeState();
}

class _BookRatingCreateFormScopeState
    extends ConsumerState<BookRatingCreateFormScope> {
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
    ref.listen(bookRatingCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _BookRatingCreateFormInheritedWidget(
      formKey: _cachedFormKey,
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            if (widget.builder != null) {
              return widget.builder!(
                context,
                BookRatingCreateProxyWidgetRef(ref),
                widget.child,
              );
            }

            return widget.child!;
          },
        ),
      ),
    );
  }
}

bool _debugCheckHasBookRatingCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! BookRatingCreateFormScope &&
        context.findAncestorWidgetOfExactType<BookRatingCreateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BookRatingCreateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BookRatingCreateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BookRatingCreateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class BookRatingCreateFormSelect<Selected> extends ConsumerWidget {
  const BookRatingCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(BookRatingCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    BookRatingCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(bookRatingCreateProvider.select((value) => selector(value)), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    final stateRef = BookRatingCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class BookRatingCreateFormState extends ConsumerWidget {
  const BookRatingCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bookRatingCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    BookRatingCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    BookRatingCreateParam? previous,
    BookRatingCreateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(bookRatingCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, BookRatingCreateProxyWidgetRef(ref), child);
  }
}

class BookRatingCreateFormStatus extends ConsumerWidget {
  const BookRatingCreateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    BookRatingCreateProxyWidgetRef ref,
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
    _debugCheckHasBookRatingCreateForm(context);

    if (onChanged != null) {
      ref.listen(bookRatingCreateCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = BookRatingCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class BookRatingCreateUserIdProxyWidgetRef
    extends BookRatingCreateProxyWidgetRef {
  BookRatingCreateUserIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get userId => select((state) => state.userId);

  /// Update the field value directly.
  void updateUserId(ProfileId newValue) => notifier.updateUserId(newValue);
}

class BookRatingCreateUserIdField extends ConsumerWidget {
  const BookRatingCreateUserIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookRatingCreateUserIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingCreateForm(context);

    final proxy = BookRatingCreateUserIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BookRatingCreateBookIdProxyWidgetRef
    extends BookRatingCreateProxyWidgetRef {
  BookRatingCreateBookIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  BookId get bookId => select((state) => state.bookId);

  /// Update the field value directly.
  void updateBookId(BookId newValue) => notifier.updateBookId(newValue);
}

class BookRatingCreateBookIdField extends ConsumerWidget {
  const BookRatingCreateBookIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookRatingCreateBookIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingCreateForm(context);

    final proxy = BookRatingCreateBookIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BookRatingCreateRatingProxyWidgetRef
    extends BookRatingCreateProxyWidgetRef {
  BookRatingCreateRatingProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int get rating => select((state) => state.rating);

  /// Update the field value directly.
  void updateRating(int newValue) => notifier.updateRating(newValue);
}

class BookRatingCreateRatingField extends ConsumerWidget {
  const BookRatingCreateRatingField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookRatingCreateRatingProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingCreateForm(context);

    final proxy = BookRatingCreateRatingProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BookRatingCreateCommentProxyWidgetRef
    extends BookRatingCreateProxyWidgetRef {
  BookRatingCreateCommentProxyWidgetRef(
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

class BookRatingCreateCommentField extends HookConsumerWidget {
  const BookRatingCreateCommentField({
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
    BookRatingCreateCommentProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookRatingCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(bookRatingCreateProvider).comment;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(bookRatingCreateProvider.select((value) => value.comment), (
      previous,
      next,
    ) {
      if (previous != next && controller.text != next) {
        controller.text = next ?? "";
      }
      onChanged?.call(previous, next);
    });

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
        final currentValue = ref.read(bookRatingCreateProvider).comment;
        if (currentValue != controller.text) {
          ref
              .read(bookRatingCreateProvider.notifier)
              .updateComment(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = BookRatingCreateCommentProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}
