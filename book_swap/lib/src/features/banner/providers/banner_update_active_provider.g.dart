// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'banner_update_active_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bannerUpdateActiveProviderDartHash() =>
    r'c2b920ff6ee0a897f75e0a25fff94f9182785eb8';

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

abstract class _$BannerUpdateActiveProviderDart
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final BannerId bannerId;

  ProviderStatus<Unit> build(
    BannerId bannerId,
  );
}

/// See also [BannerUpdateActiveProviderDart].
@ProviderFor(BannerUpdateActiveProviderDart)
const bannerUpdateActiveProviderDartProvider =
    BannerUpdateActiveProviderDartFamily();

/// See also [BannerUpdateActiveProviderDart].
class BannerUpdateActiveProviderDartFamily
    extends Family<ProviderStatus<Unit>> {
  /// See also [BannerUpdateActiveProviderDart].
  const BannerUpdateActiveProviderDartFamily();

  /// See also [BannerUpdateActiveProviderDart].
  BannerUpdateActiveProviderDartProvider call(
    BannerId bannerId,
  ) {
    return BannerUpdateActiveProviderDartProvider(
      bannerId,
    );
  }

  @override
  BannerUpdateActiveProviderDartProvider getProviderOverride(
    covariant BannerUpdateActiveProviderDartProvider provider,
  ) {
    return call(
      provider.bannerId,
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
  String? get name => r'bannerUpdateActiveProviderDartProvider';
}

/// See also [BannerUpdateActiveProviderDart].
class BannerUpdateActiveProviderDartProvider
    extends AutoDisposeNotifierProviderImpl<BannerUpdateActiveProviderDart,
        ProviderStatus<Unit>> {
  /// See also [BannerUpdateActiveProviderDart].
  BannerUpdateActiveProviderDartProvider(
    BannerId bannerId,
  ) : this._internal(
          () => BannerUpdateActiveProviderDart()..bannerId = bannerId,
          from: bannerUpdateActiveProviderDartProvider,
          name: r'bannerUpdateActiveProviderDartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bannerUpdateActiveProviderDartHash,
          dependencies: BannerUpdateActiveProviderDartFamily._dependencies,
          allTransitiveDependencies:
              BannerUpdateActiveProviderDartFamily._allTransitiveDependencies,
          bannerId: bannerId,
        );

  BannerUpdateActiveProviderDartProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bannerId,
  }) : super.internal();

  final BannerId bannerId;

  @override
  ProviderStatus<Unit> runNotifierBuild(
    covariant BannerUpdateActiveProviderDart notifier,
  ) {
    return notifier.build(
      bannerId,
    );
  }

  @override
  Override overrideWith(BannerUpdateActiveProviderDart Function() create) {
    return ProviderOverride(
      origin: this,
      override: BannerUpdateActiveProviderDartProvider._internal(
        () => create()..bannerId = bannerId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bannerId: bannerId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<BannerUpdateActiveProviderDart,
      ProviderStatus<Unit>> createElement() {
    return _BannerUpdateActiveProviderDartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BannerUpdateActiveProviderDartProvider &&
        other.bannerId == bannerId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bannerId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BannerUpdateActiveProviderDartRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `bannerId` of this provider.
  BannerId get bannerId;
}

class _BannerUpdateActiveProviderDartProviderElement
    extends AutoDisposeNotifierProviderElement<BannerUpdateActiveProviderDart,
        ProviderStatus<Unit>> with BannerUpdateActiveProviderDartRef {
  _BannerUpdateActiveProviderDartProviderElement(super.provider);

  @override
  BannerId get bannerId =>
      (origin as BannerUpdateActiveProviderDartProvider).bannerId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
