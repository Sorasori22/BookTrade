// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_confirm_offer_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestConfirmOfferHash() =>
    r'910e3c99de8e1b8669ae7b2c201c3d23ab31a7c9';

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

abstract class _$TradeRequestConfirmOffer
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final TradeRequestId id;

  ProviderStatus<Unit> build(
    TradeRequestId id,
  );
}

/// See also [TradeRequestConfirmOffer].
@ProviderFor(TradeRequestConfirmOffer)
const tradeRequestConfirmOfferProvider = TradeRequestConfirmOfferFamily();

/// See also [TradeRequestConfirmOffer].
class TradeRequestConfirmOfferFamily extends Family<ProviderStatus<Unit>> {
  /// See also [TradeRequestConfirmOffer].
  const TradeRequestConfirmOfferFamily();

  /// See also [TradeRequestConfirmOffer].
  TradeRequestConfirmOfferProvider call(
    TradeRequestId id,
  ) {
    return TradeRequestConfirmOfferProvider(
      id,
    );
  }

  @override
  TradeRequestConfirmOfferProvider getProviderOverride(
    covariant TradeRequestConfirmOfferProvider provider,
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
  String? get name => r'tradeRequestConfirmOfferProvider';
}

/// See also [TradeRequestConfirmOffer].
class TradeRequestConfirmOfferProvider extends AutoDisposeNotifierProviderImpl<
    TradeRequestConfirmOffer, ProviderStatus<Unit>> {
  /// See also [TradeRequestConfirmOffer].
  TradeRequestConfirmOfferProvider(
    TradeRequestId id,
  ) : this._internal(
          () => TradeRequestConfirmOffer()..id = id,
          from: tradeRequestConfirmOfferProvider,
          name: r'tradeRequestConfirmOfferProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestConfirmOfferHash,
          dependencies: TradeRequestConfirmOfferFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestConfirmOfferFamily._allTransitiveDependencies,
          id: id,
        );

  TradeRequestConfirmOfferProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final TradeRequestId id;

  @override
  ProviderStatus<Unit> runNotifierBuild(
    covariant TradeRequestConfirmOffer notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(TradeRequestConfirmOffer Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestConfirmOfferProvider._internal(
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
  AutoDisposeNotifierProviderElement<TradeRequestConfirmOffer,
      ProviderStatus<Unit>> createElement() {
    return _TradeRequestConfirmOfferProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestConfirmOfferProvider && other.id == id;
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
mixin TradeRequestConfirmOfferRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  TradeRequestId get id;
}

class _TradeRequestConfirmOfferProviderElement
    extends AutoDisposeNotifierProviderElement<TradeRequestConfirmOffer,
        ProviderStatus<Unit>> with TradeRequestConfirmOfferRef {
  _TradeRequestConfirmOfferProviderElement(super.provider);

  @override
  TradeRequestId get id => (origin as TradeRequestConfirmOfferProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
