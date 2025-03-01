// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'profile_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final profileCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<ProfileModel>?>((ref) => null);

abstract class _$ProfileCreateWidget extends _$ProfileCreate {
  static final profileCreateCallStatusProvider =
      StateProvider.autoDispose<AsyncValue<ProfileModel>?>((ref) => null);

  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(ProfileModel result) {}
  @protected
  @nonVirtual
  Future<AsyncValue<ProfileModel>> call() async {
    final _callStatus = ref.read(profileCreateCallStatusProvider);
    final _updateCallStatus =
        ref.read(profileCreateCallStatusProvider.notifier);

    // If it's already loading, return loading
    if (_callStatus?.isLoading == true) return const AsyncValue.loading();

    if (_callStatus?.hasValue == true) {
      return _callStatus!;
    }

    _updateCallStatus.state = const AsyncValue.loading();
    final result = await AsyncValue.guard(() async => await submit(this.state));

    _updateCallStatus.state = result;

    if (result.hasValue) {
      onSuccess(result.requireValue);
    }

    return result;
  }

  void invalidateSelf() {
    ref.invalidate(profileCreateCallStatusProvider);
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
  Future<ProfileModel> submit(ProfileCreateParam state);

  /// Update the state of the form.
  /// This allow for more flexible to update specific fields.
  void updateState(
          ProfileCreateParam Function(ProfileCreateParam state) update) =>
      state = update(state);

  /// Update the id field of ProfileCreateParam class.
  void updateId(ProfileId newValue) => state = state.copyWith(id: newValue);

  /// Update the username field of ProfileCreateParam class.
  void updateUsername(String newValue) =>
      state = state.copyWith(username: newValue);

  /// Update the fullName field of ProfileCreateParam class.
  void updateFullName(String? newValue) =>
      state = state.copyWith(fullName: newValue);

  /// Update the avatarUrl field of ProfileCreateParam class.
  void updateAvatarUrl(String? newValue) =>
      state = state.copyWith(avatarUrl: newValue);

  /// Update the bio field of ProfileCreateParam class.
  void updateBio(String? newValue) => state = state.copyWith(bio: newValue);

  /// Update the location field of ProfileCreateParam class.
  void updateLocation(String? newValue) =>
      state = state.copyWith(location: newValue);

  /// Update the address field of ProfileCreateParam class.
  void updateAddress(String? newValue) =>
      state = state.copyWith(address: newValue);

  /// Update the phoneNumber field of ProfileCreateParam class.
  void updatePhoneNumber(String? newValue) =>
      state = state.copyWith(phoneNumber: newValue);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileCreateHash() => r'539d4ca7e39cb7514bb471a1db4155ba476c81e3';

/// See also [ProfileCreate].
@ProviderFor(ProfileCreate)
final profileCreateProvider =
    AutoDisposeNotifierProvider<ProfileCreate, ProfileCreateParam>.internal(
  ProfileCreate.new,
  name: r'profileCreateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$profileCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProfileCreate = AutoDisposeNotifier<ProfileCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
