// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'wishlist_item_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final wishlistItemUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<WishlistItemModel>?, ({WishlistItemId wishlistItemId})>(
        (ref, _) => null);

abstract class _$WishlistItemUpdateWidget extends _$WishlistItemUpdate {
  static final wishlistItemUpdateCallStatusProvider = StateProvider.autoDispose
      .family<AsyncValue<WishlistItemModel>?,
          ({WishlistItemId wishlistItemId})>((ref, _) => null);

  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(WishlistItemModel result) {}
  @protected
  @nonVirtual
  Future<AsyncValue<WishlistItemModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus = ref.read(
        wishlistItemUpdateCallStatusProvider((wishlistItemId: wishlistItemId)));
    final _updateCallStatus = ref.read(
        wishlistItemUpdateCallStatusProvider((wishlistItemId: wishlistItemId))
            .notifier);

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
    ref.invalidate(wishlistItemUpdateCallStatusProvider);
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
  Future<WishlistItemModel> submit(WishlistItemUpdateParam state);

  /// Update the state of the form.
  /// This allow for more flexible to update specific fields.
  void updateState(
          WishlistItemUpdateParam Function(WishlistItemUpdateParam state)
              update) =>
      state = state.whenData(update);

  /// Update the title field of WishlistItemUpdateParam class.
  void updateTitle(String? newValue) =>
      state = state.whenData((state) => state.copyWith(title: newValue));

  /// Update the author field of WishlistItemUpdateParam class.
  void updateAuthor(String? newValue) =>
      state = state.whenData((state) => state.copyWith(author: newValue));

  /// Update the isbn field of WishlistItemUpdateParam class.
  void updateIsbn(String? newValue) =>
      state = state.whenData((state) => state.copyWith(isbn: newValue));
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wishlistItemUpdateHash() =>
    r'91611350e05c882a1beed39b386e62ee7d2a3ca4';

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

abstract class _$WishlistItemUpdate
    extends BuildlessAutoDisposeAsyncNotifier<WishlistItemUpdateParam> {
  late final WishlistItemId wishlistItemId;

  FutureOr<WishlistItemUpdateParam> build(
    WishlistItemId wishlistItemId,
  );
}

/// See also [WishlistItemUpdate].
@ProviderFor(WishlistItemUpdate)
const wishlistItemUpdateProvider = WishlistItemUpdateFamily();

/// See also [WishlistItemUpdate].
class WishlistItemUpdateFamily
    extends Family<AsyncValue<WishlistItemUpdateParam>> {
  /// See also [WishlistItemUpdate].
  const WishlistItemUpdateFamily();

  /// See also [WishlistItemUpdate].
  WishlistItemUpdateProvider call(
    WishlistItemId wishlistItemId,
  ) {
    return WishlistItemUpdateProvider(
      wishlistItemId,
    );
  }

  @override
  WishlistItemUpdateProvider getProviderOverride(
    covariant WishlistItemUpdateProvider provider,
  ) {
    return call(
      provider.wishlistItemId,
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
  String? get name => r'wishlistItemUpdateProvider';
}

/// See also [WishlistItemUpdate].
class WishlistItemUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    WishlistItemUpdate, WishlistItemUpdateParam> {
  /// See also [WishlistItemUpdate].
  WishlistItemUpdateProvider(
    WishlistItemId wishlistItemId,
  ) : this._internal(
          () => WishlistItemUpdate()..wishlistItemId = wishlistItemId,
          from: wishlistItemUpdateProvider,
          name: r'wishlistItemUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$wishlistItemUpdateHash,
          dependencies: WishlistItemUpdateFamily._dependencies,
          allTransitiveDependencies:
              WishlistItemUpdateFamily._allTransitiveDependencies,
          wishlistItemId: wishlistItemId,
        );

  WishlistItemUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.wishlistItemId,
  }) : super.internal();

  final WishlistItemId wishlistItemId;

  @override
  FutureOr<WishlistItemUpdateParam> runNotifierBuild(
    covariant WishlistItemUpdate notifier,
  ) {
    return notifier.build(
      wishlistItemId,
    );
  }

  @override
  Override overrideWith(WishlistItemUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: WishlistItemUpdateProvider._internal(
        () => create()..wishlistItemId = wishlistItemId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        wishlistItemId: wishlistItemId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WishlistItemUpdate,
      WishlistItemUpdateParam> createElement() {
    return _WishlistItemUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WishlistItemUpdateProvider &&
        other.wishlistItemId == wishlistItemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, wishlistItemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WishlistItemUpdateRef
    on AutoDisposeAsyncNotifierProviderRef<WishlistItemUpdateParam> {
  /// The parameter `wishlistItemId` of this provider.
  WishlistItemId get wishlistItemId;
}

class _WishlistItemUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WishlistItemUpdate,
        WishlistItemUpdateParam> with WishlistItemUpdateRef {
  _WishlistItemUpdateProviderElement(super.provider);

  @override
  WishlistItemId get wishlistItemId =>
      (origin as WishlistItemUpdateProvider).wishlistItemId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
