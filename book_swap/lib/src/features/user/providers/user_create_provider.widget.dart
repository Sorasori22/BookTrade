// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/user/providers/user_create_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/user/providers/user_list_pagination_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/user/i_user_repo.dart';
import 'package:book_swap/src/features/user/user_schema.schema.dart';
import 'package:book_swap/src/features/user/providers/user_list_provider.dart';
import 'dart:core';

class _UserCreateFormInheritedWidget extends InheritedWidget {
  const _UserCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _UserCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_UserCreateFormInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _UserCreateFormInheritedWidget oldWidget) {
    return formKey != oldWidget.formKey;
  }
}

class UserCreateProxyWidgetRef extends WidgetRef {
  UserCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<UserModel>? get status => _ref.watch(userCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _UserCreateFormInheritedWidget.of(context).formKey;

  UserCreate get notifier => _ref.read(userCreateProvider.notifier);

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

  UserCreateParam get state => _ref.watch(userCreateProvider);

  Selected select<Selected>(Selected Function(UserCreateParam) selector) =>
      _ref.watch(userCreateProvider.select((value) => selector(value)));

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

class UserCreateFormScope extends ConsumerStatefulWidget {
  const UserCreateFormScope({
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
    UserCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, UserModel value)? onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserCreateFormScopeState();
}

class _UserCreateFormScopeState extends ConsumerState<UserCreateFormScope> {
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
    ref.listen(userCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _UserCreateFormInheritedWidget(
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
                UserCreateProxyWidgetRef(ref),
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

bool _debugCheckHasUserCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! UserCreateFormScope &&
        context.findAncestorWidgetOfExactType<UserCreateFormScope>() == null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No UserCreateFormScope found'),
        ErrorDescription(
          '${context.widget.runtimeType} widgets require a UserCreateFormScope widget ancestor.',
        ),
      ]);
    }
    return true;
  }());
  return true;
}

class UserCreateFormSelect<Selected> extends ConsumerWidget {
  const UserCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(UserCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    UserCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(userCreateProvider.select((value) => selector(value)), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    final stateRef = UserCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class UserCreateFormState extends ConsumerWidget {
  const UserCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(userCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    UserCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(UserCreateParam? previous, UserCreateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(userCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, UserCreateProxyWidgetRef(ref), child);
  }
}

class UserCreateFormStatus extends ConsumerWidget {
  const UserCreateFormStatus({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    UserCreateProxyWidgetRef ref,
    AsyncValue<UserModel>? status,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserCreateForm(context);

    final stateRef = UserCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}
