// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/book/providers/book_update_provider.dart';
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
import 'package:book_swap/src/features/book/providers/my_book_list_provider.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:kimapp/kimapp.dart';
import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';
import 'package:book_swap/src/features/book/i_book_repo.dart';
import 'package:book_swap/src/features/book/providers/book_detail_provider.dart';
import 'package:book_swap/src/features/book/providers/book_list_pagination_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension BookUpdateFieldUpdater on BookUpdate {
  /// Update the ownerId field of BookUpdateParam class.
  void updateOwnerId(ProfileId newValue) =>
      state = state.whenData((state) => state.copyWith(ownerId: newValue));

  /// Update the title field of BookUpdateParam class.
  void updateTitle(String newValue) =>
      state = state.whenData((state) => state.copyWith(title: newValue));

  /// Update the author field of BookUpdateParam class.
  void updateAuthor(String newValue) =>
      state = state.whenData((state) => state.copyWith(author: newValue));

  /// Update the description field of BookUpdateParam class.
  void updateDescription(String? newValue) =>
      state = state.whenData(
        (state) => state.copyWith(
          description: newValue == null || newValue.isEmpty ? null : newValue,
        ),
      );

  /// Update the image field of BookUpdateParam class.
  void updateImage(ImageObject? newValue) =>
      state = state.whenData((state) => state.copyWith(image: newValue));

  /// Update the condition field of BookUpdateParam class.
  void updateCondition(int newValue) =>
      state = state.whenData((state) => state.copyWith(condition: newValue));
}

class _BookUpdateFormInheritedWidget extends InheritedWidget {
  const _BookUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({BookId bookId}) params;

  static _BookUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_BookUpdateFormInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _BookUpdateFormInheritedWidget oldWidget) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class BookUpdateProxyWidgetRef extends WidgetRef {
  BookUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({BookId bookId}) get params =>
      _BookUpdateFormInheritedWidget.of(context).params;

  AsyncValue<BookDetailModel>? get status =>
      _ref.watch(bookUpdateCallStatusProvider((bookId: params.bookId)));

  GlobalKey<FormState> get formKey =>
      _BookUpdateFormInheritedWidget.of(context).formKey;

  BookUpdate get notifier =>
      _ref.read(bookUpdateProvider(params.bookId).notifier);

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

  Selected select<Selected>(Selected Function(BookUpdateParam) selector) =>
      _ref.watch(
        bookUpdateProvider(
          params.bookId,
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

class BookUpdateFormScope extends ConsumerStatefulWidget {
  const BookUpdateFormScope({
    super.key,
    required this.bookId,
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
  final BookId bookId;
  final Widget Function(
    BuildContext context,
    BookUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, BookDetailModel value)? onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookUpdateFormScopeState();
}

class _BookUpdateFormScopeState extends ConsumerState<BookUpdateFormScope> {
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
    ref.listen(bookUpdateCallStatusProvider((bookId: widget.bookId)), (
      previous,
      next,
    ) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _BookUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (bookId: widget.bookId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              bookUpdateProvider(
                widget.bookId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              skipLoadingOnReload: true,
              skipLoadingOnRefresh: true,
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    BookUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasBookUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! BookUpdateFormScope &&
        context.findAncestorWidgetOfExactType<BookUpdateFormScope>() == null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BookUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BookUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BookUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class BookUpdateFormParams extends ConsumerWidget {
  const BookUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookUpdateProxyWidgetRef ref,
    ({BookId bookId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookUpdateForm(context);

    final params = _BookUpdateFormInheritedWidget.of(context).params;
    return builder(context, BookUpdateProxyWidgetRef(ref), params);
  }
}

class BookUpdateFormSelect<Selected> extends ConsumerWidget {
  const BookUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(BookUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    BookUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookUpdateForm(context);

    if (onStateChanged != null) {
      final params = _BookUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        bookUpdateProvider(
          params.bookId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = BookUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class BookUpdateFormState extends ConsumerWidget {
  const BookUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bookUpdateProvider(params.bookId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    BookUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(BookUpdateParam? previous, BookUpdateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookUpdateForm(context);

    if (onStateChanged != null) {
      final params = _BookUpdateFormInheritedWidget.of(context).params;
      ref.listen(bookUpdateProvider(params.bookId), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return BookUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, BookUpdateProxyWidgetRef(ref), child),
    );
  }
}

class BookUpdateFormStatus extends ConsumerWidget {
  const BookUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    BookUpdateProxyWidgetRef ref,
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
    _debugCheckHasBookUpdateForm(context);

    if (onChanged != null) {
      final params = _BookUpdateFormInheritedWidget.of(context).params;
      ref.listen(bookUpdateCallStatusProvider((bookId: params.bookId)), (
        previous,
        next,
      ) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = BookUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class BookUpdateOwnerIdProxyWidgetRef extends BookUpdateProxyWidgetRef {
  BookUpdateOwnerIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get ownerId => select((state) => state.ownerId);

  /// Update the field value directly.
  void updateOwnerId(ProfileId newValue) => notifier.updateOwnerId(newValue);
}

class BookUpdateOwnerIdField extends ConsumerWidget {
  const BookUpdateOwnerIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookUpdateOwnerIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookUpdateForm(context);

    final proxy = BookUpdateOwnerIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BookUpdateTitleProxyWidgetRef extends BookUpdateProxyWidgetRef {
  BookUpdateTitleProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get title => select((state) => state.title);

  /// Update the field value directly.
  void updateTitle(String newValue) => notifier.updateTitle(newValue);
}

class BookUpdateTitleField extends HookConsumerWidget {
  const BookUpdateTitleField({
    super.key,
    this.textController,
    this.onChanged,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, BookUpdateTitleProxyWidgetRef ref)
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookUpdateForm(context);

    final params = _BookUpdateFormInheritedWidget.of(context).params;

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue =
        ref.read(bookUpdateProvider(params.bookId)).valueOrNull?.title;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(
      bookUpdateProvider(
        params.bookId,
      ).select((value) => value.valueOrNull?.title),
      (previous, next) {
        if (previous != next && controller.text != next) {
          controller.text = next ?? "";
        }
        onChanged?.call(previous, next ?? "");
      },
    );

    // Initialize external controller if provided
    useEffect(() {
      if (textController != null && textController!.text.isEmpty) {
        textController!.text = initialValue ?? "";
      }
      return null;
    }, []);

    // Setup text listener
    useEffect(() {
      void listener() {
        final currentValue =
            ref.read(bookUpdateProvider(params.bookId)).valueOrNull?.title;
        if (currentValue != controller.text) {
          ref
              .read(bookUpdateProvider(params.bookId).notifier)
              .updateTitle(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = BookUpdateTitleProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class BookUpdateAuthorProxyWidgetRef extends BookUpdateProxyWidgetRef {
  BookUpdateAuthorProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get author => select((state) => state.author);

  /// Update the field value directly.
  void updateAuthor(String newValue) => notifier.updateAuthor(newValue);
}

class BookUpdateAuthorField extends HookConsumerWidget {
  const BookUpdateAuthorField({
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
    BookUpdateAuthorProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookUpdateForm(context);

    final params = _BookUpdateFormInheritedWidget.of(context).params;

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue =
        ref.read(bookUpdateProvider(params.bookId)).valueOrNull?.author;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(
      bookUpdateProvider(
        params.bookId,
      ).select((value) => value.valueOrNull?.author),
      (previous, next) {
        if (previous != next && controller.text != next) {
          controller.text = next ?? "";
        }
        onChanged?.call(previous, next ?? "");
      },
    );

    // Initialize external controller if provided
    useEffect(() {
      if (textController != null && textController!.text.isEmpty) {
        textController!.text = initialValue ?? "";
      }
      return null;
    }, []);

    // Setup text listener
    useEffect(() {
      void listener() {
        final currentValue =
            ref.read(bookUpdateProvider(params.bookId)).valueOrNull?.author;
        if (currentValue != controller.text) {
          ref
              .read(bookUpdateProvider(params.bookId).notifier)
              .updateAuthor(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = BookUpdateAuthorProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class BookUpdateDescriptionProxyWidgetRef extends BookUpdateProxyWidgetRef {
  BookUpdateDescriptionProxyWidgetRef(
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

class BookUpdateDescriptionField extends HookConsumerWidget {
  const BookUpdateDescriptionField({
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
    BookUpdateDescriptionProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookUpdateForm(context);

    final params = _BookUpdateFormInheritedWidget.of(context).params;

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue =
        ref.read(bookUpdateProvider(params.bookId)).valueOrNull?.description;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(
      bookUpdateProvider(
        params.bookId,
      ).select((value) => value.valueOrNull?.description),
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
        textController!.text = initialValue ?? "";
      }
      return null;
    }, []);

    // Setup text listener
    useEffect(() {
      void listener() {
        final currentValue =
            ref
                .read(bookUpdateProvider(params.bookId))
                .valueOrNull
                ?.description;
        if (currentValue != controller.text) {
          ref
              .read(bookUpdateProvider(params.bookId).notifier)
              .updateDescription(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = BookUpdateDescriptionProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class BookUpdateImageProxyWidgetRef extends BookUpdateProxyWidgetRef {
  BookUpdateImageProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ImageObject? get image => select((state) => state.image);

  /// Update the field value directly.
  void updateImage(ImageObject? newValue) => notifier.updateImage(newValue);
}

class BookUpdateImageField extends ConsumerWidget {
  const BookUpdateImageField({super.key, required this.builder});

  final Widget Function(BuildContext context, BookUpdateImageProxyWidgetRef ref)
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookUpdateForm(context);

    final proxy = BookUpdateImageProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BookUpdateConditionProxyWidgetRef extends BookUpdateProxyWidgetRef {
  BookUpdateConditionProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int get condition => select((state) => state.condition);

  /// Update the field value directly.
  void updateCondition(int newValue) => notifier.updateCondition(newValue);
}

class BookUpdateConditionField extends ConsumerWidget {
  const BookUpdateConditionField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BookUpdateConditionProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBookUpdateForm(context);

    final proxy = BookUpdateConditionProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}
