// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/user/providers/user_update_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/user/i_user_repo.dart';
import 'package:book_swap/src/features/user/user_schema.schema.dart';
import 'dart:core';

class _UserUpdateFormInheritedWidget extends InheritedWidget {
  const _UserUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({UserId userId}) params;

  static _UserUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_UserUpdateFormInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _UserUpdateFormInheritedWidget oldWidget) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class UserUpdateProxyWidgetRef extends WidgetRef {
  UserUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({UserId userId}) get params =>
      _UserUpdateFormInheritedWidget.of(context).params;

  AsyncValue<UserModel>? get status =>
      _ref.watch(userUpdateCallStatusProvider((userId: params.userId)));

  GlobalKey<FormState> get formKey =>
      _UserUpdateFormInheritedWidget.of(context).formKey;

  UserUpdate get notifier =>
      _ref.read(userUpdateProvider(params.userId).notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<UserModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  UserUpdateParam get state =>
      _ref.watch(userUpdateProvider(params.userId)).requireValue;

  Selected select<Selected>(Selected Function(UserUpdateParam) selector) =>
      _ref.watch(
        userUpdateProvider(
          params.userId,
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

class UserUpdateFormScope extends ConsumerStatefulWidget {
  const UserUpdateFormScope({
    super.key,
    required this.userId,
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
  final UserId userId;
  final Widget Function(
    BuildContext context,
    UserUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, UserModel value)? onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserUpdateFormScopeState();
}

class _UserUpdateFormScopeState extends ConsumerState<UserUpdateFormScope> {
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
    ref.listen(userUpdateCallStatusProvider((userId: widget.userId)), (
      previous,
      next,
    ) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _UserUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (userId: widget.userId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              userUpdateProvider(
                widget.userId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    UserUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasUserUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! UserUpdateFormScope &&
        context.findAncestorWidgetOfExactType<UserUpdateFormScope>() == null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No UserUpdateFormScope found'),
        ErrorDescription(
          '${context.widget.runtimeType} widgets require a UserUpdateFormScope widget ancestor.',
        ),
      ]);
    }
    return true;
  }());
  return true;
}

class UserUpdateFormParams extends ConsumerWidget {
  const UserUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    UserUpdateProxyWidgetRef ref,
    ({UserId userId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserUpdateForm(context);

    final params = _UserUpdateFormInheritedWidget.of(context).params;
    return builder(context, UserUpdateProxyWidgetRef(ref), params);
  }
}

class UserUpdateFormSelect<Selected> extends ConsumerWidget {
  const UserUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(UserUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    UserUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserUpdateForm(context);

    if (onStateChanged != null) {
      final params = _UserUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        userUpdateProvider(
          params.userId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = UserUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class UserUpdateFormState extends ConsumerWidget {
  const UserUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(userUpdateProvider(params.userId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    UserUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(UserUpdateParam? previous, UserUpdateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserUpdateForm(context);

    if (onStateChanged != null) {
      final params = _UserUpdateFormInheritedWidget.of(context).params;
      ref.listen(userUpdateProvider(params.userId), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return UserUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, UserUpdateProxyWidgetRef(ref), child),
    );
  }
}

class UserUpdateFormStatus extends ConsumerWidget {
  const UserUpdateFormStatus({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    UserUpdateProxyWidgetRef ref,
    AsyncValue<UserModel>? status,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserUpdateForm(context);

    final stateRef = UserUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}
