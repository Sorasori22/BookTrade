// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_accept_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestAcceptHash() =>
    r'865b198a28d943f82ffa4f9e1d594b321aaff3b9';

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

abstract class _$TradeRequestAccept
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final TradeRequestId id;

  ProviderStatus<Unit> build(
    TradeRequestId id,
  );
}

/// See also [TradeRequestAccept].
@ProviderFor(TradeRequestAccept)
const tradeRequestAcceptProvider = TradeRequestAcceptFamily();

/// See also [TradeRequestAccept].
class TradeRequestAcceptFamily extends Family<ProviderStatus<Unit>> {
  /// See also [TradeRequestAccept].
  const TradeRequestAcceptFamily();

  /// See also [TradeRequestAccept].
  TradeRequestAcceptProvider call(
    TradeRequestId id,
  ) {
    return TradeRequestAcceptProvider(
      id,
    );
  }

  @override
  TradeRequestAcceptProvider getProviderOverride(
    covariant TradeRequestAcceptProvider provider,
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
  String? get name => r'tradeRequestAcceptProvider';
}

/// See also [TradeRequestAccept].
class TradeRequestAcceptProvider extends AutoDisposeNotifierProviderImpl<
    TradeRequestAccept, ProviderStatus<Unit>> {
  /// See also [TradeRequestAccept].
  TradeRequestAcceptProvider(
    TradeRequestId id,
  ) : this._internal(
          () => TradeRequestAccept()..id = id,
          from: tradeRequestAcceptProvider,
          name: r'tradeRequestAcceptProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestAcceptHash,
          dependencies: TradeRequestAcceptFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestAcceptFamily._allTransitiveDependencies,
          id: id,
        );

  TradeRequestAcceptProvider._internal(
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
    covariant TradeRequestAccept notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(TradeRequestAccept Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestAcceptProvider._internal(
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
  AutoDisposeNotifierProviderElement<TradeRequestAccept, ProviderStatus<Unit>>
      createElement() {
    return _TradeRequestAcceptProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestAcceptProvider && other.id == id;
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
mixin TradeRequestAcceptRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  TradeRequestId get id;
}

class _TradeRequestAcceptProviderElement
    extends AutoDisposeNotifierProviderElement<TradeRequestAccept,
        ProviderStatus<Unit>> with TradeRequestAcceptRef {
  _TradeRequestAcceptProviderElement(super.provider);

  @override
  TradeRequestId get id => (origin as TradeRequestAcceptProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
