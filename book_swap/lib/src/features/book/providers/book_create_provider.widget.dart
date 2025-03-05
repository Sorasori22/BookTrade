// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/book/providers/book_create_provider.dart';
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
import 'package:book_swap/src/core/account/account.dart';
import 'package:book_swap/src/features/book/providers/my_book_list_provider.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:book_swap/src/features/book/i_book_repo.dart';
import 'package:book_swap/src/features/book/providers/book_list_pagination_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension BookCreateFieldUpdater on BookCreate {
  /// Update the ownerId field of BookCreateParam class.
  void updateOwnerId(ProfileId newValue) =>
      state = state.copyWith(ownerId: newValue);

  /// Update the title field of BookCreateParam class.
  void updateTitle(String newValue) => state = state.copyWith(title: newValue);

  /// Update the author field of BookCreateParam class.
  void updateAuthor(String newValue) =>
      state = state.copyWith(author: newValue);

  /// Update the description field of BookCreateParam class.
  void updateDescription(String? newValue) =>
      state = state.copyWith(
        description: newValue == null || newValue.isEmpty ? null : newValue,
      );

  /// Update the image field of BookCreateParam class.
  void updateImage(ImageObject? newValue) =>
      state = state.copyWith(image: newValue);

  /// Update the condition field of BookCreateParam class.
  void updateCondition(int? newValue) =>
      state = state.copyWith(condition: newValue);
}

class _BookCreateFormInheritedWidget extends InheritedWidget {
  const _BookCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _BookCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_BookCreateFormInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _BookCreateFormInheritedWidget oldWidget) {
    return formKey != oldWidget.formKey;
  }
}

class BookCreateProxyWidgetRef extends WidgetRef {
  BookCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<BookDetailModel>? get status =>
      _ref.watch(bookCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _BookCreateFormInheritedWidget.of(context).formKey;

  BookCreate get notifier => _ref.read(bookCreateProvider.notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<BookDetailModel>> submit({required XFile? image}) async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier(image: image);
  }

  Selected select<Selected>(Selected Function(BookCreateParam) selector) =>
      _ref.watch(bookCreateProvider.select((value) => selector(value)));

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

class BookCreateFormScope extends ConsumerStatefulWidget {
  const BookCreateFormScope({
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
    BookCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, BookDetailModel value)? onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookCreateFormScopeState();
}

class _BookCreateFormScopeState extends ConsumerState<BookCreateFormScope> {
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
    ref.listen(bookCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _BookCreateFormInheritedWidget(
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
                BookCreateProxyWidgetRef(ref),
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

bool _debugCheckHasBookCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! BookCreateFormScope &&
        context.findAncestorWidgetOfExactType<BookCreateFormScope>() == null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BookCreateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BookCreateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BookCreateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class BookCreateFormSelect<Selected> extends ConsumerWidget {
  const BookCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(BookCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    BookCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(bookCreateProvider.select((value) => selector(value)), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    final stateRef = BookCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class BookCreateFormState extends ConsumerWidget {
  const BookCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bookCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    BookCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(BookCreateParam? previous, BookCreateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(bookCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, BookCreateProxyWidgetRef(ref), child);
  }
}

class BookCreateFormStatus extends ConsumerWidget {
  const BookCreateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    BookCreateProxyWidgetRef ref,
    AsyncValue<BookDetailModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<BookDetailModel>? previous,
    AsyncValue<BookDetailModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookCreateForm(context);

    if (onChanged != null) {
      ref.listen(bookCreateCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = BookCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class BookCreateOwnerIdProxyWidgetRef extends BookCreateProxyWidgetRef {
  BookCreateOwnerIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get ownerId => select((state) => state.ownerId);

  /// Update the field value directly.
  void updateOwnerId(ProfileId newValue) => notifier.updateOwnerId(newValue);
}

class BookCreateOwnerIdField extends ConsumerWidget {
  const BookCreateOwnerIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookCreateOwnerIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookCreateForm(context);

    final proxy = BookCreateOwnerIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BookCreateTitleProxyWidgetRef extends BookCreateProxyWidgetRef {
  BookCreateTitleProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get title => select((state) => state.title);

  /// Update the field value directly.
  void updateTitle(String newValue) => notifier.updateTitle(newValue);
}

class BookCreateTitleField extends HookConsumerWidget {
  const BookCreateTitleField({
    super.key,
    this.textController,
    this.onChanged,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, BookCreateTitleProxyWidgetRef ref)
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(bookCreateProvider).title;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(bookCreateProvider.select((value) => value.title), (
      previous,
      next,
    ) {
      if (previous != next && controller.text != next) {
        controller.text = next;
      }
      onChanged?.call(previous, next);
    });

    // Initialize external controller if provided
    useEffect(() {
      if (textController != null && textController!.text.isEmpty) {
        textController!.text = initialValue;
      }
      return null;
    }, []);

    // Setup text listener
    useEffect(() {
      void listener() {
        final currentValue = ref.read(bookCreateProvider).title;
        if (currentValue != controller.text) {
          ref.read(bookCreateProvider.notifier).updateTitle(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = BookCreateTitleProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class BookCreateAuthorProxyWidgetRef extends BookCreateProxyWidgetRef {
  BookCreateAuthorProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get author => select((state) => state.author);

  /// Update the field value directly.
  void updateAuthor(String newValue) => notifier.updateAuthor(newValue);
}

class BookCreateAuthorField extends HookConsumerWidget {
  const BookCreateAuthorField({
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
    BookCreateAuthorProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(bookCreateProvider).author;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(bookCreateProvider.select((value) => value.author), (
      previous,
      next,
    ) {
      if (previous != next && controller.text != next) {
        controller.text = next;
      }
      onChanged?.call(previous, next);
    });

    // Initialize external controller if provided
    useEffect(() {
      if (textController != null && textController!.text.isEmpty) {
        textController!.text = initialValue;
      }
      return null;
    }, []);

    // Setup text listener
    useEffect(() {
      void listener() {
        final currentValue = ref.read(bookCreateProvider).author;
        if (currentValue != controller.text) {
          ref.read(bookCreateProvider.notifier).updateAuthor(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = BookCreateAuthorProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class BookCreateDescriptionProxyWidgetRef extends BookCreateProxyWidgetRef {
  BookCreateDescriptionProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get description => select((state) => state.description);

  /// Update the field value directly.
  void updateDescription(String? newValue) =>
      notifier.updateDescription(newValue);
}

class BookCreateDescriptionField extends HookConsumerWidget {
  const BookCreateDescriptionField({
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
    BookCreateDescriptionProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(bookCreateProvider).description;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(bookCreateProvider.select((value) => value.description), (
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
        final currentValue = ref.read(bookCreateProvider).description;
        if (currentValue != controller.text) {
          ref
              .read(bookCreateProvider.notifier)
              .updateDescription(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = BookCreateDescriptionProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class BookCreateImageProxyWidgetRef extends BookCreateProxyWidgetRef {
  BookCreateImageProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ImageObject? get image => select((state) => state.image);

  /// Update the field value directly.
  void updateImage(ImageObject? newValue) => notifier.updateImage(newValue);
}

class BookCreateImageField extends ConsumerWidget {
  const BookCreateImageField({super.key, required this.builder});

  final Widget Function(BuildContext context, BookCreateImageProxyWidgetRef ref)
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookCreateForm(context);

    final proxy = BookCreateImageProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BookCreateConditionProxyWidgetRef extends BookCreateProxyWidgetRef {
  BookCreateConditionProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int? get condition => select((state) => state.condition);

  /// Update the field value directly.
  void updateCondition(int? newValue) => notifier.updateCondition(newValue);
}

class BookCreateConditionField extends ConsumerWidget {
  const BookCreateConditionField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookCreateConditionProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookCreateForm(context);

    final proxy = BookCreateConditionProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}
