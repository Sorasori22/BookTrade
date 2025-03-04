// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'sign_up_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final signUpCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<UserId>?>((ref) => null);

abstract class _$SignUpWidget extends _$SignUp {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(UserId result) => throw UnimplementedError(
      'This error occurred because you overrode the method without running build_runner. Please run [dart pub run build_runner build] to generate the necessary code.');

  @nonVirtual
  Future<AsyncValue<UserId>> call() async {
    final _callStatus = ref.read(signUpCallStatusProvider);
    final _updateCallStatus = ref.read(signUpCallStatusProvider.notifier);

    if (_callStatus?.isLoading == true) return const AsyncValue.loading();

    if (_callStatus?.hasValue == true) {
      return _callStatus!;
    }

    _updateCallStatus.state = const AsyncValue.loading();
    final result = await AsyncValue.guard(() async => await submit(this.state));

    _updateCallStatus.state = result;

    return result;
  }

  void invalidateSelf() {
    ref.invalidate(signUpCallStatusProvider);
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
  Future<UserId> submit(SignUpParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(SignUpParam Function(SignUpParam state) update) =>
      state = update(state);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signUpHash() => r'5138a6df9c1bc3301971da5d89d86a846bc5a9ff';

/// See also [SignUp].
@ProviderFor(SignUp)
final signUpProvider =
    AutoDisposeNotifierProvider<SignUp, SignUpParam>.internal(
  SignUp.new,
  name: r'signUpProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signUpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SignUp = AutoDisposeNotifier<SignUpParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
