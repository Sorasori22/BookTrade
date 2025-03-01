// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestDeleteHash() =>
    r'2fa26f451103cd874ed33e13b77780d7ae0f0934';

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

abstract class _$TradeRequestDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final TradeRequestId id;

  ProviderStatus<Unit> build(
    TradeRequestId id,
  );
}

/// See also [TradeRequestDelete].
@ProviderFor(TradeRequestDelete)
const tradeRequestDeleteProvider = TradeRequestDeleteFamily();

/// See also [TradeRequestDelete].
class TradeRequestDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [TradeRequestDelete].
  const TradeRequestDeleteFamily();

  /// See also [TradeRequestDelete].
  TradeRequestDeleteProvider call(
    TradeRequestId id,
  ) {
    return TradeRequestDeleteProvider(
      id,
    );
  }

  @override
  TradeRequestDeleteProvider getProviderOverride(
    covariant TradeRequestDeleteProvider provider,
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
  String? get name => r'tradeRequestDeleteProvider';
}

/// See also [TradeRequestDelete].
class TradeRequestDeleteProvider extends AutoDisposeNotifierProviderImpl<
    TradeRequestDelete, ProviderStatus<Unit>> {
  /// See also [TradeRequestDelete].
  TradeRequestDeleteProvider(
    TradeRequestId id,
  ) : this._internal(
          () => TradeRequestDelete()..id = id,
          from: tradeRequestDeleteProvider,
          name: r'tradeRequestDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestDeleteHash,
          dependencies: TradeRequestDeleteFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  TradeRequestDeleteProvider._internal(
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
    covariant TradeRequestDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(TradeRequestDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<TradeRequestDelete, ProviderStatus<Unit>>
      createElement() {
    return _TradeRequestDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestDeleteProvider && other.id == id;
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
mixin TradeRequestDeleteRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  TradeRequestId get id;
}

class _TradeRequestDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<TradeRequestDelete,
        ProviderStatus<Unit>> with TradeRequestDeleteRef {
  _TradeRequestDeleteProviderElement(super.provider);

  @override
  TradeRequestId get id => (origin as TradeRequestDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
