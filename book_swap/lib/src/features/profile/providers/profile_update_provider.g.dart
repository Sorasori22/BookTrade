// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'profile_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final profileUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<ProfileDetailModel>?, ({ProfileId profileId})>(
        (ref, _) => null);

abstract class _$ProfileUpdateWidget extends _$ProfileUpdate {
  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(ProfileDetailModel result) {}
  @nonVirtual
  Future<AsyncValue<ProfileDetailModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus =
        ref.read(profileUpdateCallStatusProvider((profileId: profileId)));
    final _updateCallStatus = ref
        .read(profileUpdateCallStatusProvider((profileId: profileId)).notifier);

// If it's already loading, return loading
    if (_callStatus?.isLoading == true) return const AsyncValue.loading();

    if (_callStatus?.hasValue == true) {
      return _callStatus!;
    }

    _updateCallStatus.state = const AsyncValue.loading();
    final result = await AsyncValue.guard(
        () async => await submit(this.state.requireValue));

    _updateCallStatus.state = result;

    if (result.hasValue) {
      onSuccess(result.requireValue);
    }

    return result;
  }

  void invalidateSelf() {
    ref.invalidate(profileUpdateCallStatusProvider);
    ref.invalidateSelf();
  }

  /// Internal submit implementation for form submission.
  ///
  /// ⚠️ WARNING: Do not call this method directly - use [call] instead.
  /// Direct usage bypasses:
  /// - Error handling
  /// - Loading state management
  /// - Success callback handling
  /// - Form validation
  ///
  /// This method should be overridden to implement the actual form submission logic:
  /// 1. Validate form data
  /// 2. Transform data if needed
  /// 3. Call API/repository methods
  /// 4. Return success/failure result
  @visibleForOverriding
  @protected
  Future<ProfileDetailModel> submit(ProfileUpdateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          ProfileUpdateParam Function(ProfileUpdateParam state) update) =>
      state = state.whenData(update);

  /// Update the username field of ProfileUpdateParam class.
  void updateUsername(String? newValue) =>
      state = state.whenData((state) => state.copyWith(username: newValue));

  /// Update the fullname field of ProfileUpdateParam class.
  void updateFullname(String? newValue) =>
      state = state.whenData((state) => state.copyWith(fullname: newValue));

  /// Update the avatar field of ProfileUpdateParam class.
  void updateAvatar(ImageObject? newValue) =>
      state = state.whenData((state) => state.copyWith(avatar: newValue));

  /// Update the bio field of ProfileUpdateParam class.
  void updateBio(String? newValue) =>
      state = state.whenData((state) => state.copyWith(bio: newValue));

  /// Update the age field of ProfileUpdateParam class.
  void updateAge(int? newValue) =>
      state = state.whenData((state) => state.copyWith(age: newValue));

  /// Update the location field of ProfileUpdateParam class.
  void updateLocation(String? newValue) =>
      state = state.whenData((state) => state.copyWith(location: newValue));

  /// Update the address field of ProfileUpdateParam class.
  void updateAddress(String? newValue) =>
      state = state.whenData((state) => state.copyWith(address: newValue));

  /// Update the phoneNumber field of ProfileUpdateParam class.
  void updatePhoneNumber(String? newValue) =>
      state = state.whenData((state) => state.copyWith(phoneNumber: newValue));
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileUpdateHash() => r'1f344936884e60ff828c78d28dce48ff37cbab3f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProfileUpdate
    extends BuildlessAutoDisposeAsyncNotifier<ProfileUpdateParam> {
  late final ProfileId profileId;

  FutureOr<ProfileUpdateParam> build(
    ProfileId profileId,
  );
}

/// See also [ProfileUpdate].
@ProviderFor(ProfileUpdate)
const profileUpdateProvider = ProfileUpdateFamily();

/// See also [ProfileUpdate].
class ProfileUpdateFamily extends Family<AsyncValue<ProfileUpdateParam>> {
  /// See also [ProfileUpdate].
  const ProfileUpdateFamily();

  /// See also [ProfileUpdate].
  ProfileUpdateProvider call(
    ProfileId profileId,
  ) {
    return ProfileUpdateProvider(
      profileId,
    );
  }

  @override
  ProfileUpdateProvider getProviderOverride(
    covariant ProfileUpdateProvider provider,
  ) {
    return call(
      provider.profileId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'profileUpdateProvider';
}

/// See also [ProfileUpdate].
class ProfileUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ProfileUpdate, ProfileUpdateParam> {
  /// See also [ProfileUpdate].
  ProfileUpdateProvider(
    ProfileId profileId,
  ) : this._internal(
          () => ProfileUpdate()..profileId = profileId,
          from: profileUpdateProvider,
          name: r'profileUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileUpdateHash,
          dependencies: ProfileUpdateFamily._dependencies,
          allTransitiveDependencies:
              ProfileUpdateFamily._allTransitiveDependencies,
          profileId: profileId,
        );

  ProfileUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.profileId,
  }) : super.internal();

  final ProfileId profileId;

  @override
  FutureOr<ProfileUpdateParam> runNotifierBuild(
    covariant ProfileUpdate notifier,
  ) {
    return notifier.build(
      profileId,
    );
  }

  @override
  Override overrideWith(ProfileUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileUpdateProvider._internal(
        () => create()..profileId = profileId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        profileId: profileId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProfileUpdate, ProfileUpdateParam>
      createElement() {
    return _ProfileUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileUpdateProvider && other.profileId == profileId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, profileId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileUpdateRef
    on AutoDisposeAsyncNotifierProviderRef<ProfileUpdateParam> {
  /// The parameter `profileId` of this provider.
  ProfileId get profileId;
}

class _ProfileUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProfileUpdate,
        ProfileUpdateParam> with ProfileUpdateRef {
  _ProfileUpdateProviderElement(super.provider);

  @override
  ProfileId get profileId => (origin as ProfileUpdateProvider).profileId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
