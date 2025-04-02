// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'banner_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final bannerCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<BannerModel>?>((ref) => null);

abstract class _$BannerCreateWidget extends _$BannerCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(BannerModel result);
  @nonVirtual
  Future<AsyncValue<BannerModel>> call() async {
    final _callStatus = ref.read(bannerCreateCallStatusProvider);
    final _updateCallStatus = ref.read(bannerCreateCallStatusProvider.notifier);

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
    ref.invalidate(bannerCreateCallStatusProvider);
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
  Future<BannerModel> submit(BannerCreateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          BannerCreateParam Function(BannerCreateParam state) update) =>
      state = update(state);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bannerCreateHash() => r'3ee62b0d7897c1bd9fe8e150874e7ac61a4d16c9';

/// See also [BannerCreate].
@ProviderFor(BannerCreate)
final bannerCreateProvider =
    AutoDisposeNotifierProvider<BannerCreate, BannerCreateParam>.internal(
  BannerCreate.new,
  name: r'bannerCreateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bannerCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BannerCreate = AutoDisposeNotifier<BannerCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
