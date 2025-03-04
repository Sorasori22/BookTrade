// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'wishlist_item_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final wishlistItemCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<WishlistItemModel>?>((ref) => null);

abstract class _$WishlistItemCreateWidget extends _$WishlistItemCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(WishlistItemModel result);
  @nonVirtual
  Future<AsyncValue<WishlistItemModel>> call() async {
    final _callStatus = ref.read(wishlistItemCreateCallStatusProvider);
    final _updateCallStatus =
        ref.read(wishlistItemCreateCallStatusProvider.notifier);

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
    ref.invalidate(wishlistItemCreateCallStatusProvider);
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
  Future<WishlistItemModel> submit(WishlistItemCreateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          WishlistItemCreateParam Function(WishlistItemCreateParam state)
              update) =>
      state = update(state);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wishlistItemCreateHash() =>
    r'969d504ea9475d197cf627fdd8de42b2fc12151c';

/// See also [WishlistItemCreate].
@ProviderFor(WishlistItemCreate)
final wishlistItemCreateProvider = AutoDisposeNotifierProvider<
    WishlistItemCreate, WishlistItemCreateParam>.internal(
  WishlistItemCreate.new,
  name: r'wishlistItemCreateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wishlistItemCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WishlistItemCreate = AutoDisposeNotifier<WishlistItemCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
