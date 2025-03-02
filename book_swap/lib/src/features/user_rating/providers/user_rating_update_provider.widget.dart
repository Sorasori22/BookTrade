// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/user_rating/providers/user_rating_update_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/user_rating/i_user_rating_repo.dart';
import 'package:book_swap/src/features/user_rating/user_rating_schema.schema.dart';
import 'package:book_swap/src/features/user_rating/providers/user_rating_detail_provider.dart';
import 'package:book_swap/src/features/user_rating/providers/user_rating_list_pagination_provider.dart';
import 'package:book_swap/src/features/user_rating/providers/user_rating_list_provider.dart';
import 'dart:core';

class _UserRatingUpdateFormInheritedWidget extends InheritedWidget {
  const _UserRatingUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({UserRatingId userRatingId}) params;

  static _UserRatingUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _UserRatingUpdateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _UserRatingUpdateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class UserRatingUpdateProxyWidgetRef extends WidgetRef {
  UserRatingUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({UserRatingId userRatingId}) get params =>
      _UserRatingUpdateFormInheritedWidget.of(context).params;

  AsyncValue<UserRatingModel>? get status => _ref.watch(
    userRatingUpdateCallStatusProvider((userRatingId: params.userRatingId)),
  );

  GlobalKey<FormState> get formKey =>
      _UserRatingUpdateFormInheritedWidget.of(context).formKey;

  UserRatingUpdate get notifier =>
      _ref.read(userRatingUpdateProvider(params.userRatingId).notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<UserRatingModel>> submit() async {
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
    Selected Function(UserRatingUpdateParam) selector,
  ) => _ref.watch(
    userRatingUpdateProvider(
      params.userRatingId,
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

class UserRatingUpdateFormScope extends ConsumerStatefulWidget {
  const UserRatingUpdateFormScope({
    super.key,
    required this.userRatingId,
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
  final UserRatingId userRatingId;
  final Widget Function(
    BuildContext context,
    UserRatingUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, UserRatingModel value)? onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserRatingUpdateFormScopeState();
}

class _UserRatingUpdateFormScopeState
    extends ConsumerState<UserRatingUpdateFormScope> {
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
      userRatingUpdateCallStatusProvider((userRatingId: widget.userRatingId)),
      (previous, next) {
        if (previous?.hasValue == false && next?.hasValue == true) {
          widget.onSuccessed?.call(context, next!.requireValue);
        }
      },
    );

    return _UserRatingUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (userRatingId: widget.userRatingId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              userRatingUpdateProvider(
                widget.userRatingId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    UserRatingUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasUserRatingUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! UserRatingUpdateFormScope &&
        context.findAncestorWidgetOfExactType<UserRatingUpdateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No UserRatingUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a UserRatingUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct UserRatingUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class UserRatingUpdateFormParams extends ConsumerWidget {
  const UserRatingUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    UserRatingUpdateProxyWidgetRef ref,
    ({UserRatingId userRatingId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingUpdateForm(context);

    final params = _UserRatingUpdateFormInheritedWidget.of(context).params;
    return builder(context, UserRatingUpdateProxyWidgetRef(ref), params);
  }
}

class UserRatingUpdateFormSelect<Selected> extends ConsumerWidget {
  const UserRatingUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(UserRatingUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    UserRatingUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingUpdateForm(context);

    if (onStateChanged != null) {
      final params = _UserRatingUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        userRatingUpdateProvider(
          params.userRatingId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = UserRatingUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class UserRatingUpdateFormState extends ConsumerWidget {
  const UserRatingUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(userRatingUpdateProvider(params.userRatingId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    UserRatingUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    UserRatingUpdateParam? previous,
    UserRatingUpdateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingUpdateForm(context);

    if (onStateChanged != null) {
      final params = _UserRatingUpdateFormInheritedWidget.of(context).params;
      ref.listen(userRatingUpdateProvider(params.userRatingId), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return UserRatingUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, UserRatingUpdateProxyWidgetRef(ref), child),
    );
  }
}

class UserRatingUpdateFormStatus extends ConsumerWidget {
  const UserRatingUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    UserRatingUpdateProxyWidgetRef ref,
    AsyncValue<UserRatingModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<UserRatingModel>? previous,
    AsyncValue<UserRatingModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingUpdateForm(context);

    if (onChanged != null) {
      final params = _UserRatingUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        userRatingUpdateCallStatusProvider((userRatingId: params.userRatingId)),
        (previous, next) {
          if (previous != next) {
            onChanged!(previous, next);
          }
        },
      );
    }
    final stateRef = UserRatingUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class UserRatingUpdateRatingProxyWidgetRef
    extends UserRatingUpdateProxyWidgetRef {
  UserRatingUpdateRatingProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int? get rating => select((state) => state.rating);

  /// Update the field value directly.
  void updateRating(int? newValue) => notifier.updateRating(newValue);
}

class UserRatingUpdateRatingField extends ConsumerWidget {
  const UserRatingUpdateRatingField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    UserRatingUpdateRatingProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingUpdateForm(context);

    final proxy = UserRatingUpdateRatingProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class UserRatingUpdateCommentProxyWidgetRef
    extends UserRatingUpdateProxyWidgetRef {
  UserRatingUpdateCommentProxyWidgetRef(
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

class UserRatingUpdateCommentField extends ConsumerStatefulWidget {
  const UserRatingUpdateCommentField({
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
    UserRatingUpdateCommentProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      UserRatingUpdateCommentFieldState();
}

class UserRatingUpdateCommentFieldState
    extends ConsumerState<UserRatingUpdateCommentField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _UserRatingUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref
            .read(userRatingUpdateProvider(params.userRatingId))
            .valueOrNull
            ?.comment;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      userRatingUpdateProvider(
        params.userRatingId,
      ).select((value) => value.requireValue.comment),
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
    final params = _UserRatingUpdateFormInheritedWidget.of(context).params;
    ref
        .read(userRatingUpdateProvider(params.userRatingId).notifier)
        .updateComment(_textController.text);
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
    _debugCheckHasUserRatingUpdateForm(context);

    final proxy = UserRatingUpdateCommentProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}
