// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/profile/providers/profile_update_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/profile/i_profile_repo.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/profile/providers/profile_detail_provider.dart';
import 'package:book_swap/src/features/profile/providers/profile_list_pagination_provider.dart';
import 'package:book_swap/src/features/profile/providers/profile_list_provider.dart';
import 'dart:core';

class _ProfileUpdateFormInheritedWidget extends InheritedWidget {
  const _ProfileUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({ProfileId profileId}) params;

  static _ProfileUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _ProfileUpdateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _ProfileUpdateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class ProfileUpdateProxyWidgetRef extends WidgetRef {
  ProfileUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({ProfileId profileId}) get params =>
      _ProfileUpdateFormInheritedWidget.of(context).params;

  AsyncValue<ProfileModel>? get status => _ref.watch(
    profileUpdateCallStatusProvider((profileId: params.profileId)),
  );

  GlobalKey<FormState> get formKey =>
      _ProfileUpdateFormInheritedWidget.of(context).formKey;

  ProfileUpdate get notifier =>
      _ref.read(profileUpdateProvider(params.profileId).notifier);

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

  Selected select<Selected>(Selected Function(ProfileUpdateParam) selector) =>
      _ref.watch(
        profileUpdateProvider(
          params.profileId,
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

class ProfileUpdateFormScope extends ConsumerStatefulWidget {
  const ProfileUpdateFormScope({
    super.key,
    required this.profileId,
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
  final ProfileId profileId;
  final Widget Function(
    BuildContext context,
    ProfileUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, ProfileModel value)? onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileUpdateFormScopeState();
}

class _ProfileUpdateFormScopeState
    extends ConsumerState<ProfileUpdateFormScope> {
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
    ref.listen(profileUpdateCallStatusProvider((profileId: widget.profileId)), (
      previous,
      next,
    ) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _ProfileUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (profileId: widget.profileId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              profileUpdateProvider(
                widget.profileId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    ProfileUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasProfileUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! ProfileUpdateFormScope &&
        context.findAncestorWidgetOfExactType<ProfileUpdateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No ProfileUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a ProfileUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct ProfileUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class ProfileUpdateFormParams extends ConsumerWidget {
  const ProfileUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    ProfileUpdateProxyWidgetRef ref,
    ({ProfileId profileId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileUpdateForm(context);

    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    return builder(context, ProfileUpdateProxyWidgetRef(ref), params);
  }
}

class ProfileUpdateFormSelect<Selected> extends ConsumerWidget {
  const ProfileUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(ProfileUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    ProfileUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileUpdateForm(context);

    if (onStateChanged != null) {
      final params = _ProfileUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        profileUpdateProvider(
          params.profileId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = ProfileUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class ProfileUpdateFormState extends ConsumerWidget {
  const ProfileUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(profileUpdateProvider(params.profileId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    ProfileUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(ProfileUpdateParam? previous, ProfileUpdateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileUpdateForm(context);

    if (onStateChanged != null) {
      final params = _ProfileUpdateFormInheritedWidget.of(context).params;
      ref.listen(profileUpdateProvider(params.profileId), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return ProfileUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, ProfileUpdateProxyWidgetRef(ref), child),
    );
  }
}

class ProfileUpdateFormStatus extends ConsumerWidget {
  const ProfileUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    ProfileUpdateProxyWidgetRef ref,
    AsyncValue<ProfileModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<ProfileModel>? previous,
    AsyncValue<ProfileModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasProfileUpdateForm(context);

    if (onChanged != null) {
      final params = _ProfileUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        profileUpdateCallStatusProvider((profileId: params.profileId)),
        (previous, next) {
          if (previous != next) {
            onChanged!(previous, next);
          }
        },
      );
    }
    final stateRef = ProfileUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class ProfileUpdateUsernameProxyWidgetRef extends ProfileUpdateProxyWidgetRef {
  ProfileUpdateUsernameProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get username => select((state) => state.username);

  /// Update the field value directly.
  void updateUsername(String? newValue) => notifier.updateUsername(newValue);
}

class ProfileUpdateUsernameField extends ConsumerStatefulWidget {
  const ProfileUpdateUsernameField({
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
    ProfileUpdateUsernameProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileUpdateUsernameFieldState();
}

class ProfileUpdateUsernameFieldState
    extends ConsumerState<ProfileUpdateUsernameField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref.read(profileUpdateProvider(params.profileId)).valueOrNull?.username;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileUpdateProvider(
        params.profileId,
      ).select((value) => value.requireValue.username),
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
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    ref
        .read(profileUpdateProvider(params.profileId).notifier)
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
    _debugCheckHasProfileUpdateForm(context);

    final proxy = ProfileUpdateUsernameProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileUpdateFullNameProxyWidgetRef extends ProfileUpdateProxyWidgetRef {
  ProfileUpdateFullNameProxyWidgetRef(
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

class ProfileUpdateFullNameField extends ConsumerStatefulWidget {
  const ProfileUpdateFullNameField({
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
    ProfileUpdateFullNameProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileUpdateFullNameFieldState();
}

class ProfileUpdateFullNameFieldState
    extends ConsumerState<ProfileUpdateFullNameField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref.read(profileUpdateProvider(params.profileId)).valueOrNull?.fullName;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileUpdateProvider(
        params.profileId,
      ).select((value) => value.requireValue.fullName),
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
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    ref
        .read(profileUpdateProvider(params.profileId).notifier)
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
    _debugCheckHasProfileUpdateForm(context);

    final proxy = ProfileUpdateFullNameProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileUpdateAvatarUrlProxyWidgetRef extends ProfileUpdateProxyWidgetRef {
  ProfileUpdateAvatarUrlProxyWidgetRef(
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

class ProfileUpdateAvatarUrlField extends ConsumerStatefulWidget {
  const ProfileUpdateAvatarUrlField({
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
    ProfileUpdateAvatarUrlProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileUpdateAvatarUrlFieldState();
}

class ProfileUpdateAvatarUrlFieldState
    extends ConsumerState<ProfileUpdateAvatarUrlField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref
            .read(profileUpdateProvider(params.profileId))
            .valueOrNull
            ?.avatarUrl;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileUpdateProvider(
        params.profileId,
      ).select((value) => value.requireValue.avatarUrl),
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
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    ref
        .read(profileUpdateProvider(params.profileId).notifier)
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
    _debugCheckHasProfileUpdateForm(context);

    final proxy = ProfileUpdateAvatarUrlProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileUpdateBioProxyWidgetRef extends ProfileUpdateProxyWidgetRef {
  ProfileUpdateBioProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get bio => select((state) => state.bio);

  /// Update the field value directly.
  void updateBio(String? newValue) => notifier.updateBio(newValue);
}

class ProfileUpdateBioField extends ConsumerStatefulWidget {
  const ProfileUpdateBioField({
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
    ProfileUpdateBioProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileUpdateBioFieldState();
}

class ProfileUpdateBioFieldState extends ConsumerState<ProfileUpdateBioField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref.read(profileUpdateProvider(params.profileId)).valueOrNull?.bio;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileUpdateProvider(
        params.profileId,
      ).select((value) => value.requireValue.bio),
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
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    ref
        .read(profileUpdateProvider(params.profileId).notifier)
        .updateBio(_textController.text);
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
    _debugCheckHasProfileUpdateForm(context);

    final proxy = ProfileUpdateBioProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileUpdateLocationProxyWidgetRef extends ProfileUpdateProxyWidgetRef {
  ProfileUpdateLocationProxyWidgetRef(
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

class ProfileUpdateLocationField extends ConsumerStatefulWidget {
  const ProfileUpdateLocationField({
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
    ProfileUpdateLocationProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileUpdateLocationFieldState();
}

class ProfileUpdateLocationFieldState
    extends ConsumerState<ProfileUpdateLocationField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref.read(profileUpdateProvider(params.profileId)).valueOrNull?.location;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileUpdateProvider(
        params.profileId,
      ).select((value) => value.requireValue.location),
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
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    ref
        .read(profileUpdateProvider(params.profileId).notifier)
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
    _debugCheckHasProfileUpdateForm(context);

    final proxy = ProfileUpdateLocationProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileUpdateAddressProxyWidgetRef extends ProfileUpdateProxyWidgetRef {
  ProfileUpdateAddressProxyWidgetRef(
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

class ProfileUpdateAddressField extends ConsumerStatefulWidget {
  const ProfileUpdateAddressField({
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
    ProfileUpdateAddressProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileUpdateAddressFieldState();
}

class ProfileUpdateAddressFieldState
    extends ConsumerState<ProfileUpdateAddressField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref.read(profileUpdateProvider(params.profileId)).valueOrNull?.address;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileUpdateProvider(
        params.profileId,
      ).select((value) => value.requireValue.address),
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
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    ref
        .read(profileUpdateProvider(params.profileId).notifier)
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
    _debugCheckHasProfileUpdateForm(context);

    final proxy = ProfileUpdateAddressProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class ProfileUpdatePhoneNumberProxyWidgetRef
    extends ProfileUpdateProxyWidgetRef {
  ProfileUpdatePhoneNumberProxyWidgetRef(
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

class ProfileUpdatePhoneNumberField extends ConsumerStatefulWidget {
  const ProfileUpdatePhoneNumberField({
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
    ProfileUpdatePhoneNumberProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ProfileUpdatePhoneNumberFieldState();
}

class ProfileUpdatePhoneNumberFieldState
    extends ConsumerState<ProfileUpdatePhoneNumberField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref
            .read(profileUpdateProvider(params.profileId))
            .valueOrNull
            ?.phoneNumber;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      profileUpdateProvider(
        params.profileId,
      ).select((value) => value.requireValue.phoneNumber),
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
    final params = _ProfileUpdateFormInheritedWidget.of(context).params;
    ref
        .read(profileUpdateProvider(params.profileId).notifier)
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
    _debugCheckHasProfileUpdateForm(context);

    final proxy = ProfileUpdatePhoneNumberProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}
