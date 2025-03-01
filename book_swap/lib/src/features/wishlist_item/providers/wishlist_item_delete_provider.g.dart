// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'wishlist_item_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wishlistItemDeleteHash() =>
    r'53ce24dfe49abf1a3a7aaea12772ed73e0ea1aeb';

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

abstract class _$WishlistItemDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final WishlistItemId id;

  ProviderStatus<Unit> build(
    WishlistItemId id,
  );
}

/// See also [WishlistItemDelete].
@ProviderFor(WishlistItemDelete)
const wishlistItemDeleteProvider = WishlistItemDeleteFamily();

/// See also [WishlistItemDelete].
class WishlistItemDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [WishlistItemDelete].
  const WishlistItemDeleteFamily();

  /// See also [WishlistItemDelete].
  WishlistItemDeleteProvider call(
    WishlistItemId id,
  ) {
    return WishlistItemDeleteProvider(
      id,
    );
  }

  @override
  WishlistItemDeleteProvider getProviderOverride(
    covariant WishlistItemDeleteProvider provider,
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
  String? get name => r'wishlistItemDeleteProvider';
}

/// See also [WishlistItemDelete].
class WishlistItemDeleteProvider extends AutoDisposeNotifierProviderImpl<
    WishlistItemDelete, ProviderStatus<Unit>> {
  /// See also [WishlistItemDelete].
  WishlistItemDeleteProvider(
    WishlistItemId id,
  ) : this._internal(
          () => WishlistItemDelete()..id = id,
          from: wishlistItemDeleteProvider,
          name: r'wishlistItemDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$wishlistItemDeleteHash,
          dependencies: WishlistItemDeleteFamily._dependencies,
          allTransitiveDependencies:
              WishlistItemDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  WishlistItemDeleteProvider._internal(
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
  ProviderStatus<Unit> runNotifierBuild(
    covariant WishlistItemDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(WishlistItemDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: WishlistItemDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<WishlistItemDelete, ProviderStatus<Unit>>
      createElement() {
    return _WishlistItemDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WishlistItemDeleteProvider && other.id == id;
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
mixin WishlistItemDeleteRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  WishlistItemId get id;
}

class _WishlistItemDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<WishlistItemDelete,
        ProviderStatus<Unit>> with WishlistItemDeleteRef {
  _WishlistItemDeleteProviderElement(super.provider);

  @override
  WishlistItemId get id => (origin as WishlistItemDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
