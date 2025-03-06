// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/wishlist_item/providers/wishlist_item_create_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/wishlist_item/i_wishlist_item_repo.dart';
import 'package:book_swap/src/features/wishlist_item/wishlist_item_schema.schema.dart';
import 'package:book_swap/src/features/wishlist_item/providers/wishlist_item_list_pagination_provider.dart';
import 'package:book_swap/src/features/wishlist_item/providers/wishlist_item_list_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension WishlistItemCreateFieldUpdater on WishlistItemCreate {
  /// Update the userId field of WishlistItemCreateParam class.
  void updateUserId(ProfileId newValue) =>
      state = state.copyWith(userId: newValue);

  /// Update the title field of WishlistItemCreateParam class.
  void updateTitle(String newValue) => state = state.copyWith(title: newValue);

  /// Update the author field of WishlistItemCreateParam class.
  void updateAuthor(String? newValue) =>
      state = state.copyWith(
        author: newValue == null || newValue.isEmpty ? null : newValue,
      );

  /// Update the isbn field of WishlistItemCreateParam class.
  void updateIsbn(String? newValue) =>
      state = state.copyWith(
        isbn: newValue == null || newValue.isEmpty ? null : newValue,
      );
}

class _WishlistItemCreateFormInheritedWidget extends InheritedWidget {
  const _WishlistItemCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _WishlistItemCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _WishlistItemCreateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _WishlistItemCreateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey;
  }
}

class WishlistItemCreateProxyWidgetRef extends WidgetRef {
  WishlistItemCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<WishlistItemModel>? get status =>
      _ref.watch(wishlistItemCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _WishlistItemCreateFormInheritedWidget.of(context).formKey;

  WishlistItemCreate get notifier =>
      _ref.read(wishlistItemCreateProvider.notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<WishlistItemModel>> submit() async {
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
    Selected Function(WishlistItemCreateParam) selector,
  ) =>
      _ref.watch(wishlistItemCreateProvider.select((value) => selector(value)));

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

class WishlistItemCreateFormScope extends ConsumerStatefulWidget {
  const WishlistItemCreateFormScope({
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
    WishlistItemCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, WishlistItemModel value)?
  onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _WishlistItemCreateFormScopeState();
}

class _WishlistItemCreateFormScopeState
    extends ConsumerState<WishlistItemCreateFormScope> {
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
    ref.listen(wishlistItemCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _WishlistItemCreateFormInheritedWidget(
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
                WishlistItemCreateProxyWidgetRef(ref),
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

bool _debugCheckHasWishlistItemCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! WishlistItemCreateFormScope &&
        context.findAncestorWidgetOfExactType<WishlistItemCreateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No WishlistItemCreateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a WishlistItemCreateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct WishlistItemCreateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class WishlistItemCreateFormSelect<Selected> extends ConsumerWidget {
  const WishlistItemCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(WishlistItemCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    WishlistItemCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(
        wishlistItemCreateProvider.select((value) => selector(value)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = WishlistItemCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class WishlistItemCreateFormState extends ConsumerWidget {
  const WishlistItemCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(wishlistItemCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    WishlistItemCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    WishlistItemCreateParam? previous,
    WishlistItemCreateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(wishlistItemCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, WishlistItemCreateProxyWidgetRef(ref), child);
  }
}

class WishlistItemCreateFormStatus extends ConsumerWidget {
  const WishlistItemCreateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    WishlistItemCreateProxyWidgetRef ref,
    AsyncValue<WishlistItemModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<WishlistItemModel>? previous,
    AsyncValue<WishlistItemModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemCreateForm(context);

    if (onChanged != null) {
      ref.listen(wishlistItemCreateCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = WishlistItemCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class WishlistItemCreateUserIdProxyWidgetRef
    extends WishlistItemCreateProxyWidgetRef {
  WishlistItemCreateUserIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get userId => select((state) => state.userId);

  /// Update the field value directly.
  void updateUserId(ProfileId newValue) => notifier.updateUserId(newValue);
}

class WishlistItemCreateUserIdField extends ConsumerWidget {
  const WishlistItemCreateUserIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    WishlistItemCreateUserIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemCreateForm(context);

    final proxy = WishlistItemCreateUserIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class WishlistItemCreateTitleProxyWidgetRef
    extends WishlistItemCreateProxyWidgetRef {
  WishlistItemCreateTitleProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get title => select((state) => state.title);

  /// Update the field value directly.
  void updateTitle(String newValue) => notifier.updateTitle(newValue);
}

class WishlistItemCreateTitleField extends HookConsumerWidget {
  const WishlistItemCreateTitleField({
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
    WishlistItemCreateTitleProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(wishlistItemCreateProvider).title;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(wishlistItemCreateProvider.select((value) => value.title), (
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
        final currentValue = ref.read(wishlistItemCreateProvider).title;
        if (currentValue != controller.text) {
          ref
              .read(wishlistItemCreateProvider.notifier)
              .updateTitle(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = WishlistItemCreateTitleProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class WishlistItemCreateAuthorProxyWidgetRef
    extends WishlistItemCreateProxyWidgetRef {
  WishlistItemCreateAuthorProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get author => select((state) => state.author);

  /// Update the field value directly.
  void updateAuthor(String? newValue) => notifier.updateAuthor(newValue);
}

class WishlistItemCreateAuthorField extends HookConsumerWidget {
  const WishlistItemCreateAuthorField({
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
    WishlistItemCreateAuthorProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(wishlistItemCreateProvider).author;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(wishlistItemCreateProvider.select((value) => value.author), (
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
        final currentValue = ref.read(wishlistItemCreateProvider).author;
        if (currentValue != controller.text) {
          ref
              .read(wishlistItemCreateProvider.notifier)
              .updateAuthor(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = WishlistItemCreateAuthorProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class WishlistItemCreateIsbnProxyWidgetRef
    extends WishlistItemCreateProxyWidgetRef {
  WishlistItemCreateIsbnProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get isbn => select((state) => state.isbn);

  /// Update the field value directly.
  void updateIsbn(String? newValue) => notifier.updateIsbn(newValue);
}

class WishlistItemCreateIsbnField extends HookConsumerWidget {
  const WishlistItemCreateIsbnField({
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
    WishlistItemCreateIsbnProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(wishlistItemCreateProvider).isbn;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(wishlistItemCreateProvider.select((value) => value.isbn), (
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
        final currentValue = ref.read(wishlistItemCreateProvider).isbn;
        if (currentValue != controller.text) {
          ref
              .read(wishlistItemCreateProvider.notifier)
              .updateIsbn(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = WishlistItemCreateIsbnProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}
