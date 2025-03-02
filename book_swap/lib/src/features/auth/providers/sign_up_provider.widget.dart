// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/auth/providers/sign_up_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/auth/params/sign_up_param.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/auth/auth.dart';
import 'dart:core';

class _SignUpFormInheritedWidget extends InheritedWidget {
  const _SignUpFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _SignUpFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_SignUpFormInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _SignUpFormInheritedWidget oldWidget) {
    return formKey != oldWidget.formKey;
  }
}

class SignUpProxyWidgetRef extends WidgetRef {
  SignUpProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<UserId>? get status => _ref.watch(signUpCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _SignUpFormInheritedWidget.of(context).formKey;

  SignUp get notifier => _ref.read(signUpProvider.notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<UserId>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  Selected select<Selected>(Selected Function(SignUpParam) selector) =>
      _ref.watch(signUpProvider.select((value) => selector(value)));

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

class SignUpFormScope extends ConsumerStatefulWidget {
  const SignUpFormScope({
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
    SignUpProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, UserId value)? onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpFormScopeState();
}

class _SignUpFormScopeState extends ConsumerState<SignUpFormScope> {
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
    ref.listen(signUpCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _SignUpFormInheritedWidget(
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
                SignUpProxyWidgetRef(ref),
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

bool _debugCheckHasSignUpForm(BuildContext context) {
  assert(() {
    if (context.widget is! SignUpFormScope &&
        context.findAncestorWidgetOfExactType<SignUpFormScope>() == null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No SignUpFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a SignUpFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct SignUpFormScope',
      );
    }
    return true;
  }());
  return true;
}

class SignUpFormSelect<Selected> extends ConsumerWidget {
  const SignUpFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(SignUpParam state) selector;
  final Widget Function(
    BuildContext context,
    SignUpProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasSignUpForm(context);

    if (onStateChanged != null) {
      ref.listen(signUpProvider.select((value) => selector(value)), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    final stateRef = SignUpProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class SignUpFormState extends ConsumerWidget {
  const SignUpFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(signUpProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    SignUpProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(SignUpParam? previous, SignUpParam? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasSignUpForm(context);

    if (onStateChanged != null) {
      ref.listen(signUpProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, SignUpProxyWidgetRef(ref), child);
  }
}

class SignUpFormStatus extends ConsumerWidget {
  const SignUpFormStatus({super.key, required this.builder, this.onChanged});

  final Widget Function(
    BuildContext context,
    SignUpProxyWidgetRef ref,
    AsyncValue<UserId>? status,
  )
  builder;
  final void Function(AsyncValue<UserId>? previous, AsyncValue<UserId>? next)?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasSignUpForm(context);

    if (onChanged != null) {
      ref.listen(signUpCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = SignUpProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class SignUpEmailProxyWidgetRef extends SignUpProxyWidgetRef {
  SignUpEmailProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get email => select((state) => state.email);

  /// Update the field value directly.
  void updateEmail(String newValue) => notifier.updateEmail(newValue);
}

class SignUpEmailField extends ConsumerStatefulWidget {
  const SignUpEmailField({
    super.key,
    this.textController,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, SignUpEmailProxyWidgetRef ref)
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      SignUpEmailFieldState();
}

class SignUpEmailFieldState extends ConsumerState<SignUpEmailField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(signUpProvider).email;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      signUpProvider.select((value) => value.email),
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
        _textController.text = next;
      }
    });
  }

  /// Syncs text field changes to the provider
  void _syncTextToProvider() {
    if (!mounted) return;

    ref.read(signUpProvider.notifier).updateEmail(_textController.text);
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
    _debugCheckHasSignUpForm(context);

    final proxy = SignUpEmailProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class SignUpPasswordProxyWidgetRef extends SignUpProxyWidgetRef {
  SignUpPasswordProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get password => select((state) => state.password);

  /// Update the field value directly.
  void updatePassword(String newValue) => notifier.updatePassword(newValue);
}

class SignUpPasswordField extends ConsumerStatefulWidget {
  const SignUpPasswordField({
    super.key,
    this.textController,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, SignUpPasswordProxyWidgetRef ref)
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      SignUpPasswordFieldState();
}

class SignUpPasswordFieldState extends ConsumerState<SignUpPasswordField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(signUpProvider).password;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      signUpProvider.select((value) => value.password),
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
        _textController.text = next;
      }
    });
  }

  /// Syncs text field changes to the provider
  void _syncTextToProvider() {
    if (!mounted) return;

    ref.read(signUpProvider.notifier).updatePassword(_textController.text);
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
    _debugCheckHasSignUpForm(context);

    final proxy = SignUpPasswordProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class SignUpNameProxyWidgetRef extends SignUpProxyWidgetRef {
  SignUpNameProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get name => select((state) => state.name);

  /// Update the field value directly.
  void updateName(String newValue) => notifier.updateName(newValue);
}

class SignUpNameField extends ConsumerStatefulWidget {
  const SignUpNameField({
    super.key,
    this.textController,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, SignUpNameProxyWidgetRef ref)
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SignUpNameFieldState();
}

class SignUpNameFieldState extends ConsumerState<SignUpNameField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(signUpProvider).name;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      signUpProvider.select((value) => value.name),
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
        _textController.text = next;
      }
    });
  }

  /// Syncs text field changes to the provider
  void _syncTextToProvider() {
    if (!mounted) return;

    ref.read(signUpProvider.notifier).updateName(_textController.text);
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
    _debugCheckHasSignUpForm(context);

    final proxy = SignUpNameProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class SignUpAgeProxyWidgetRef extends SignUpProxyWidgetRef {
  SignUpAgeProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int? get age => select((state) => state.age);

  /// Update the field value directly.
  void updateAge(int? newValue) => notifier.updateAge(newValue);
}

class SignUpAgeField extends ConsumerWidget {
  const SignUpAgeField({super.key, required this.builder});

  final Widget Function(BuildContext context, SignUpAgeProxyWidgetRef ref)
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasSignUpForm(context);

    final proxy = SignUpAgeProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}
