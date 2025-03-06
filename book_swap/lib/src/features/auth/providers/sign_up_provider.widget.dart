// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/auth/providers/sign_up_provider.dart';
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
import 'package:book_swap/src/features/auth/auth.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension SignUpFieldUpdater on SignUp {
  /// Update the email field of SignUpParam class.
  void updateEmail(String newValue) => state = state.copyWith(email: newValue);

  /// Update the password field of SignUpParam class.
  void updatePassword(String newValue) =>
      state = state.copyWith(password: newValue);

  /// Update the name field of SignUpParam class.
  void updateName(String newValue) => state = state.copyWith(name: newValue);

  /// Update the age field of SignUpParam class.
  void updateAge(int? newValue) => state = state.copyWith(age: newValue);
}

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

class SignUpEmailField extends HookConsumerWidget {
  const SignUpEmailField({
    super.key,
    this.textController,
    this.onChanged,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, SignUpEmailProxyWidgetRef ref)
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasSignUpForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(signUpProvider).email;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(signUpProvider.select((value) => value.email), (previous, next) {
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
        final currentValue = ref.read(signUpProvider).email;
        if (currentValue != controller.text) {
          ref.read(signUpProvider.notifier).updateEmail(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = SignUpEmailProxyWidgetRef(ref, textController: controller);

    return builder(context, proxy);
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

class SignUpPasswordField extends HookConsumerWidget {
  const SignUpPasswordField({
    super.key,
    this.textController,
    this.onChanged,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, SignUpPasswordProxyWidgetRef ref)
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasSignUpForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(signUpProvider).password;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(signUpProvider.select((value) => value.password), (
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
        final currentValue = ref.read(signUpProvider).password;
        if (currentValue != controller.text) {
          ref.read(signUpProvider.notifier).updatePassword(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = SignUpPasswordProxyWidgetRef(ref, textController: controller);

    return builder(context, proxy);
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

class SignUpNameField extends HookConsumerWidget {
  const SignUpNameField({
    super.key,
    this.textController,
    this.onChanged,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, SignUpNameProxyWidgetRef ref)
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasSignUpForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(signUpProvider).name;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(signUpProvider.select((value) => value.name), (previous, next) {
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
        final currentValue = ref.read(signUpProvider).name;
        if (currentValue != controller.text) {
          ref.read(signUpProvider.notifier).updateName(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = SignUpNameProxyWidgetRef(ref, textController: controller);

    return builder(context, proxy);
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
