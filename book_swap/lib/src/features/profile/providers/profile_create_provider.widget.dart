// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/profile/providers/profile_create_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/profile/i_profile_repo.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/profile/providers/profile_list_pagination_provider.dart';
import 'package:book_swap/src/features/profile/providers/profile_list_provider.dart';
import 'dart:core';

class _ProfileCreateFormInheritedWidget extends InheritedWidget {
  const _ProfileCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _ProfileCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _ProfileCreateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _ProfileCreateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey;
  }
}

class ProfileCreateProxyWidgetRef extends WidgetRef {
  ProfileCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<ProfileModel>? get status =>
      _ref.watch(profileCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _ProfileCreateFormInheritedWidget.of(context).formKey;

  ProfileCreate get notifier => _ref.read(profileCreateProvider.notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<ProfileModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  ProfileCreateParam get state => _ref.watch(profileCreateProvider);

  Selected select<Selected>(Selected Function(ProfileCreateParam) selector) =>
      _ref.watch(profileCreateProvider.select((value) => selector(value)));

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

class ProfileCreateFormScope extends ConsumerStatefulWidget {
  const ProfileCreateFormScope({
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
    ProfileCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, ProfileModel value)? onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileCreateFormScopeState();
}

class _ProfileCreateFormScopeState
    extends ConsumerState<ProfileCreateFormScope> {
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
    ref.listen(profileCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _ProfileCreateFormInheritedWidget(
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
                ProfileCreateProxyWidgetRef(ref),
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

bool _debugCheckHasProfileCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! ProfileCreateFormScope &&
        context.findAncestorWidgetOfExactType<ProfileCreateFormScope>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No ProfileCreateFormScope found'),
        ErrorDescription(
          '${context.widget.runtimeType} widgets require a ProfileCreateFormScope widget ancestor.',
        ),
      ]);
    }
    return true;
  }());
  return true;
}

class ProfileCreateFormSelect<Selected> extends ConsumerWidget {
  const ProfileCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(ProfileCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    ProfileCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(profileCreateProvider.select((value) => selector(value)), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    final stateRef = ProfileCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class ProfileCreateFormState extends ConsumerWidget {
  const ProfileCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(profileCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    ProfileCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(ProfileCreateParam? previous, ProfileCreateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(profileCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, ProfileCreateProxyWidgetRef(ref), child);
  }
}

class ProfileCreateFormStatus extends ConsumerWidget {
  const ProfileCreateFormStatus({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    ProfileCreateProxyWidgetRef ref,
    AsyncValue<ProfileModel>? status,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileCreateForm(context);

    final stateRef = ProfileCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class ProfileCreateIdProxyWidgetRef extends ProfileCreateProxyWidgetRef {
  ProfileCreateIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get id => select((state) => state.id);

  /// Update the field value directly.
  void updateId(ProfileId newValue) => notifier.updateId(newValue);
}

class ProfileCreateIdField extends ConsumerWidget {
  const ProfileCreateIdField({super.key, required this.builder});

  final Widget Function(BuildContext context, ProfileCreateIdProxyWidgetRef ref)
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileCreateForm(context);

    final proxy = ProfileCreateIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class ProfileCreateUsernameProxyWidgetRef extends ProfileCreateProxyWidgetRef {
  ProfileCreateUsernameProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get username => select((state) => state.username);

  /// Update the field value directly.
  void updateUsername(String newValue) => notifier.updateUsername(newValue);
}

class ProfileCreateUsernameField extends ConsumerStatefulWidget {
  const ProfileCreateUsernameField({
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
    ProfileCreateUsernameProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileCreateUsernameFieldState();
}

class ProfileCreateUsernameFieldState
    extends ConsumerState<ProfileCreateUsernameField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(profileCreateProvider).username;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileCreateProvider.select((value) => value.username),
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

    ref
        .read(profileCreateProvider.notifier)
        .updateUsername(_textController.text);
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
    _debugCheckHasProfileCreateForm(context);

    final proxy = ProfileCreateUsernameProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileCreateFullNameProxyWidgetRef extends ProfileCreateProxyWidgetRef {
  ProfileCreateFullNameProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get fullName => select((state) => state.fullName);

  /// Update the field value directly.
  void updateFullName(String? newValue) => notifier.updateFullName(newValue);
}

class ProfileCreateFullNameField extends ConsumerStatefulWidget {
  const ProfileCreateFullNameField({
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
    ProfileCreateFullNameProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileCreateFullNameFieldState();
}

class ProfileCreateFullNameFieldState
    extends ConsumerState<ProfileCreateFullNameField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(profileCreateProvider).fullName;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileCreateProvider.select((value) => value.fullName),
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

    ref
        .read(profileCreateProvider.notifier)
        .updateFullName(_textController.text);
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
    _debugCheckHasProfileCreateForm(context);

    final proxy = ProfileCreateFullNameProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileCreateAvatarUrlProxyWidgetRef extends ProfileCreateProxyWidgetRef {
  ProfileCreateAvatarUrlProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get avatarUrl => select((state) => state.avatarUrl);

  /// Update the field value directly.
  void updateAvatarUrl(String? newValue) => notifier.updateAvatarUrl(newValue);
}

class ProfileCreateAvatarUrlField extends ConsumerStatefulWidget {
  const ProfileCreateAvatarUrlField({
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
    ProfileCreateAvatarUrlProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileCreateAvatarUrlFieldState();
}

class ProfileCreateAvatarUrlFieldState
    extends ConsumerState<ProfileCreateAvatarUrlField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(profileCreateProvider).avatarUrl;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileCreateProvider.select((value) => value.avatarUrl),
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

    ref
        .read(profileCreateProvider.notifier)
        .updateAvatarUrl(_textController.text);
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
    _debugCheckHasProfileCreateForm(context);

    final proxy = ProfileCreateAvatarUrlProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileCreateBioProxyWidgetRef extends ProfileCreateProxyWidgetRef {
  ProfileCreateBioProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get bio => select((state) => state.bio);

  /// Update the field value directly.
  void updateBio(String? newValue) => notifier.updateBio(newValue);
}

class ProfileCreateBioField extends ConsumerStatefulWidget {
  const ProfileCreateBioField({
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
    ProfileCreateBioProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileCreateBioFieldState();
}

class ProfileCreateBioFieldState extends ConsumerState<ProfileCreateBioField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(profileCreateProvider).bio;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileCreateProvider.select((value) => value.bio),
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

    ref.read(profileCreateProvider.notifier).updateBio(_textController.text);
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
    _debugCheckHasProfileCreateForm(context);

    final proxy = ProfileCreateBioProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileCreateLocationProxyWidgetRef extends ProfileCreateProxyWidgetRef {
  ProfileCreateLocationProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get location => select((state) => state.location);

  /// Update the field value directly.
  void updateLocation(String? newValue) => notifier.updateLocation(newValue);
}

class ProfileCreateLocationField extends ConsumerStatefulWidget {
  const ProfileCreateLocationField({
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
    ProfileCreateLocationProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileCreateLocationFieldState();
}

class ProfileCreateLocationFieldState
    extends ConsumerState<ProfileCreateLocationField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(profileCreateProvider).location;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileCreateProvider.select((value) => value.location),
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

    ref
        .read(profileCreateProvider.notifier)
        .updateLocation(_textController.text);
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
    _debugCheckHasProfileCreateForm(context);

    final proxy = ProfileCreateLocationProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileCreateAddressProxyWidgetRef extends ProfileCreateProxyWidgetRef {
  ProfileCreateAddressProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get address => select((state) => state.address);

  /// Update the field value directly.
  void updateAddress(String? newValue) => notifier.updateAddress(newValue);
}

class ProfileCreateAddressField extends ConsumerStatefulWidget {
  const ProfileCreateAddressField({
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
    ProfileCreateAddressProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileCreateAddressFieldState();
}

class ProfileCreateAddressFieldState
    extends ConsumerState<ProfileCreateAddressField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(profileCreateProvider).address;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileCreateProvider.select((value) => value.address),
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

    ref
        .read(profileCreateProvider.notifier)
        .updateAddress(_textController.text);
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
    _debugCheckHasProfileCreateForm(context);

    final proxy = ProfileCreateAddressProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileCreatePhoneNumberProxyWidgetRef
    extends ProfileCreateProxyWidgetRef {
  ProfileCreatePhoneNumberProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get phoneNumber => select((state) => state.phoneNumber);

  /// Update the field value directly.
  void updatePhoneNumber(String? newValue) =>
      notifier.updatePhoneNumber(newValue);
}

class ProfileCreatePhoneNumberField extends ConsumerStatefulWidget {
  const ProfileCreatePhoneNumberField({
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
    ProfileCreatePhoneNumberProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileCreatePhoneNumberFieldState();
}

class ProfileCreatePhoneNumberFieldState
    extends ConsumerState<ProfileCreatePhoneNumberField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(profileCreateProvider).phoneNumber;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileCreateProvider.select((value) => value.phoneNumber),
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

    ref
        .read(profileCreateProvider.notifier)
        .updatePhoneNumber(_textController.text);
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
    _debugCheckHasProfileCreateForm(context);

    final proxy = ProfileCreatePhoneNumberProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}
