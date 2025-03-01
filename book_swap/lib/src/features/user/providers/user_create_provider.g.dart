// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final userCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<UserModel>?>((ref) => null);

abstract class _$UserCreateWidget extends _$UserCreate {
  static final userCreateCallStatusProvider =
      StateProvider.autoDispose<AsyncValue<UserModel>?>((ref) => null);

  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(UserModel result) {}
  @protected
  @nonVirtual
  Future<AsyncValue<UserModel>> call() async {
    final _callStatus = ref.read(userCreateCallStatusProvider);
    final _updateCallStatus = ref.read(userCreateCallStatusProvider.notifier);

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
    ref.invalidate(userCreateCallStatusProvider);
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
  Future<UserModel> submit(UserCreateParam state);

  /// Update the state of the form.
  /// This allow for more flexible to update specific fields.
  void updateState(UserCreateParam Function(UserCreateParam state) update) =>
      state = update(state);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userCreateHash() => r'19d28dad69e6ca9b8c01dbd5fed23b7044ece84a';

/// See also [UserCreate].
@ProviderFor(UserCreate)
final userCreateProvider =
    AutoDisposeNotifierProvider<UserCreate, UserCreateParam>.internal(
  UserCreate.new,
  name: r'userCreateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserCreate = AutoDisposeNotifier<UserCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
