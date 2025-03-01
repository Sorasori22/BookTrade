// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'wishlist_item_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wishlistItemDetailHash() =>
    r'2bf633e6f91f1ea643fe0131cae0bf377951abab';

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

abstract class _$WishlistItemDetail
    extends BuildlessAutoDisposeAsyncNotifier<WishlistItemModel> {
  late final WishlistItemId id;

  FutureOr<WishlistItemModel> build(
    WishlistItemId id,
  );
}

/// See also [WishlistItemDetail].
@ProviderFor(WishlistItemDetail)
const wishlistItemDetailProvider = WishlistItemDetailFamily();

/// See also [WishlistItemDetail].
class WishlistItemDetailFamily extends Family<AsyncValue<WishlistItemModel>> {
  /// See also [WishlistItemDetail].
  const WishlistItemDetailFamily();

  /// See also [WishlistItemDetail].
  WishlistItemDetailProvider call(
    WishlistItemId id,
  ) {
    return WishlistItemDetailProvider(
      id,
    );
  }

  @override
  WishlistItemDetailProvider getProviderOverride(
    covariant WishlistItemDetailProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'wishlistItemDetailProvider';
}

/// See also [WishlistItemDetail].
class WishlistItemDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    WishlistItemDetail, WishlistItemModel> {
  /// See also [WishlistItemDetail].
  WishlistItemDetailProvider(
    WishlistItemId id,
  ) : this._internal(
          () => WishlistItemDetail()..id = id,
          from: wishlistItemDetailProvider,
          name: r'wishlistItemDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$wishlistItemDetailHash,
          dependencies: WishlistItemDetailFamily._dependencies,
          allTransitiveDependencies:
              WishlistItemDetailFamily._allTransitiveDependencies,
          id: id,
        );

  WishlistItemDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final WishlistItemId id;

  @override
  FutureOr<WishlistItemModel> runNotifierBuild(
    covariant WishlistItemDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(WishlistItemDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: WishlistItemDetailProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WishlistItemDetail, WishlistItemModel>
      createElement() {
    return _WishlistItemDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WishlistItemDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WishlistItemDetailRef
    on AutoDisposeAsyncNotifierProviderRef<WishlistItemModel> {
  /// The parameter `id` of this provider.
  WishlistItemId get id;
}

class _WishlistItemDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WishlistItemDetail,
        WishlistItemModel> with WishlistItemDetailRef {
  _WishlistItemDetailProviderElement(super.provider);

  @override
  WishlistItemId get id => (origin as WishlistItemDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
