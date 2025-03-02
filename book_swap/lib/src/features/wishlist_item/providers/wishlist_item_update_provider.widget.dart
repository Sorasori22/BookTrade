// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/wishlist_item/providers/wishlist_item_update_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/wishlist_item/i_wishlist_item_repo.dart';
import 'package:book_swap/src/features/wishlist_item/wishlist_item_schema.schema.dart';
import 'package:book_swap/src/features/wishlist_item/providers/wishlist_item_detail_provider.dart';
import 'package:book_swap/src/features/wishlist_item/providers/wishlist_item_list_pagination_provider.dart';
import 'package:book_swap/src/features/wishlist_item/providers/wishlist_item_list_provider.dart';
import 'dart:core';

class _WishlistItemUpdateFormInheritedWidget extends InheritedWidget {
  const _WishlistItemUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({WishlistItemId wishlistItemId}) params;

  static _WishlistItemUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _WishlistItemUpdateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _WishlistItemUpdateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class WishlistItemUpdateProxyWidgetRef extends WidgetRef {
  WishlistItemUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({WishlistItemId wishlistItemId}) get params =>
      _WishlistItemUpdateFormInheritedWidget.of(context).params;

  AsyncValue<WishlistItemModel>? get status => _ref.watch(
    wishlistItemUpdateCallStatusProvider((
      wishlistItemId: params.wishlistItemId,
    )),
  );

  GlobalKey<FormState> get formKey =>
      _WishlistItemUpdateFormInheritedWidget.of(context).formKey;

  WishlistItemUpdate get notifier =>
      _ref.read(wishlistItemUpdateProvider(params.wishlistItemId).notifier);

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
    Selected Function(WishlistItemUpdateParam) selector,
  ) => _ref.watch(
    wishlistItemUpdateProvider(
      params.wishlistItemId,
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

class WishlistItemUpdateFormScope extends ConsumerStatefulWidget {
  const WishlistItemUpdateFormScope({
    super.key,
    required this.wishlistItemId,
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
  final WishlistItemId wishlistItemId;
  final Widget Function(
    BuildContext context,
    WishlistItemUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, WishlistItemModel value)?
  onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _WishlistItemUpdateFormScopeState();
}

class _WishlistItemUpdateFormScopeState
    extends ConsumerState<WishlistItemUpdateFormScope> {
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
      wishlistItemUpdateCallStatusProvider((
        wishlistItemId: widget.wishlistItemId,
      )),
      (previous, next) {
        if (previous?.hasValue == false && next?.hasValue == true) {
          widget.onSuccessed?.call(context, next!.requireValue);
        }
      },
    );

    return _WishlistItemUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (wishlistItemId: widget.wishlistItemId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              wishlistItemUpdateProvider(
                widget.wishlistItemId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    WishlistItemUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasWishlistItemUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! WishlistItemUpdateFormScope &&
        context.findAncestorWidgetOfExactType<WishlistItemUpdateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No WishlistItemUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a WishlistItemUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct WishlistItemUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class WishlistItemUpdateFormParams extends ConsumerWidget {
  const WishlistItemUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    WishlistItemUpdateProxyWidgetRef ref,
    ({WishlistItemId wishlistItemId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemUpdateForm(context);

    final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
    return builder(context, WishlistItemUpdateProxyWidgetRef(ref), params);
  }
}

class WishlistItemUpdateFormSelect<Selected> extends ConsumerWidget {
  const WishlistItemUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(WishlistItemUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    WishlistItemUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemUpdateForm(context);

    if (onStateChanged != null) {
      final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        wishlistItemUpdateProvider(
          params.wishlistItemId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = WishlistItemUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class WishlistItemUpdateFormState extends ConsumerWidget {
  const WishlistItemUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(wishlistItemUpdateProvider(params.wishlistItemId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    WishlistItemUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    WishlistItemUpdateParam? previous,
    WishlistItemUpdateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasWishlistItemUpdateForm(context);

    if (onStateChanged != null) {
      final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
      ref.listen(wishlistItemUpdateProvider(params.wishlistItemId), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return WishlistItemUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, WishlistItemUpdateProxyWidgetRef(ref), child),
    );
  }
}

class WishlistItemUpdateFormStatus extends ConsumerWidget {
  const WishlistItemUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    WishlistItemUpdateProxyWidgetRef ref,
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
    _debugCheckHasWishlistItemUpdateForm(context);

    if (onChanged != null) {
      final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        wishlistItemUpdateCallStatusProvider((
          wishlistItemId: params.wishlistItemId,
        )),
        (previous, next) {
          if (previous != next) {
            onChanged!(previous, next);
          }
        },
      );
    }
    final stateRef = WishlistItemUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class WishlistItemUpdateTitleProxyWidgetRef
    extends WishlistItemUpdateProxyWidgetRef {
  WishlistItemUpdateTitleProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get title => select((state) => state.title);

  /// Update the field value directly.
  void updateTitle(String? newValue) => notifier.updateTitle(newValue);
}

class WishlistItemUpdateTitleField extends ConsumerStatefulWidget {
  const WishlistItemUpdateTitleField({
    super.key,
    this.textController,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(
    BuildContext context,
    WishlistItemUpdateTitleProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      WishlistItemUpdateTitleFieldState();
}

class WishlistItemUpdateTitleFieldState
    extends ConsumerState<WishlistItemUpdateTitleField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref
            .read(wishlistItemUpdateProvider(params.wishlistItemId))
            .valueOrNull
            ?.title;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      wishlistItemUpdateProvider(
        params.wishlistItemId,
      ).select((value) => value.requireValue.title),
      _handleFieldValueChange,
      fireImmediately: false,
    );

    _textController.addListener(_syncTextToProvider);
  }

  /// Handles when the provider value changes and updates the text controller
  void _handleFieldValueChange(dynamic previous, dynamic next) {
    if (previous == next) return;
    if (_textController.text == next) return;

    // Ensure we're not updating a disposed controller
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _textController.text = next ?? "";
      }
    });
  }

  /// Syncs text field changes to the provider
  void _syncTextToProvider() {
    if (!mounted) return;
    final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
    ref
        .read(wishlistItemUpdateProvider(params.wishlistItemId).notifier)
        .updateTitle(_textController.text);
  }

  @override
  void dispose() {
    _textController.removeListener(_syncTextToProvider);
    // Only dispose if we created the controller
    if (widget.textController == null) {
      _textController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _debugCheckHasWishlistItemUpdateForm(context);

    final proxy = WishlistItemUpdateTitleProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class WishlistItemUpdateAuthorProxyWidgetRef
    extends WishlistItemUpdateProxyWidgetRef {
  WishlistItemUpdateAuthorProxyWidgetRef(
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

class WishlistItemUpdateAuthorField extends ConsumerStatefulWidget {
  const WishlistItemUpdateAuthorField({
    super.key,
    this.textController,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(
    BuildContext context,
    WishlistItemUpdateAuthorProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      WishlistItemUpdateAuthorFieldState();
}

class WishlistItemUpdateAuthorFieldState
    extends ConsumerState<WishlistItemUpdateAuthorField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref
            .read(wishlistItemUpdateProvider(params.wishlistItemId))
            .valueOrNull
            ?.author;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      wishlistItemUpdateProvider(
        params.wishlistItemId,
      ).select((value) => value.requireValue.author),
      _handleFieldValueChange,
      fireImmediately: false,
    );

    _textController.addListener(_syncTextToProvider);
  }

  /// Handles when the provider value changes and updates the text controller
  void _handleFieldValueChange(dynamic previous, dynamic next) {
    if (previous == next) return;
    if (_textController.text == next) return;

    // Ensure we're not updating a disposed controller
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _textController.text = next ?? "";
      }
    });
  }

  /// Syncs text field changes to the provider
  void _syncTextToProvider() {
    if (!mounted) return;
    final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
    ref
        .read(wishlistItemUpdateProvider(params.wishlistItemId).notifier)
        .updateAuthor(_textController.text);
  }

  @override
  void dispose() {
    _textController.removeListener(_syncTextToProvider);
    // Only dispose if we created the controller
    if (widget.textController == null) {
      _textController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _debugCheckHasWishlistItemUpdateForm(context);

    final proxy = WishlistItemUpdateAuthorProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class WishlistItemUpdateIsbnProxyWidgetRef
    extends WishlistItemUpdateProxyWidgetRef {
  WishlistItemUpdateIsbnProxyWidgetRef(
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

class WishlistItemUpdateIsbnField extends ConsumerStatefulWidget {
  const WishlistItemUpdateIsbnField({
    super.key,
    this.textController,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(
    BuildContext context,
    WishlistItemUpdateIsbnProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      WishlistItemUpdateIsbnFieldState();
}

class WishlistItemUpdateIsbnFieldState
    extends ConsumerState<WishlistItemUpdateIsbnField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref
            .read(wishlistItemUpdateProvider(params.wishlistItemId))
            .valueOrNull
            ?.isbn;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      wishlistItemUpdateProvider(
        params.wishlistItemId,
      ).select((value) => value.requireValue.isbn),
      _handleFieldValueChange,
      fireImmediately: false,
    );

    _textController.addListener(_syncTextToProvider);
  }

  /// Handles when the provider value changes and updates the text controller
  void _handleFieldValueChange(dynamic previous, dynamic next) {
    if (previous == next) return;
    if (_textController.text == next) return;

    // Ensure we're not updating a disposed controller
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _textController.text = next ?? "";
      }
    });
  }

  /// Syncs text field changes to the provider
  void _syncTextToProvider() {
    if (!mounted) return;
    final params = _WishlistItemUpdateFormInheritedWidget.of(context).params;
    ref
        .read(wishlistItemUpdateProvider(params.wishlistItemId).notifier)
        .updateIsbn(_textController.text);
  }

  @override
  void dispose() {
    _textController.removeListener(_syncTextToProvider);
    // Only dispose if we created the controller
    if (widget.textController == null) {
      _textController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _debugCheckHasWishlistItemUpdateForm(context);

    final proxy = WishlistItemUpdateIsbnProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}
