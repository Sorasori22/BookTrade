// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_update_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestUpdateStatusHash() =>
    r'df95d25a76ad74720fecb8116182786465fcd1a7';

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

abstract class _$TradeRequestUpdateStatus
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final TradeRequestId id;

  ProviderStatus<Unit> build(
    TradeRequestId id,
  );
}

/// See also [TradeRequestUpdateStatus].
@ProviderFor(TradeRequestUpdateStatus)
const tradeRequestUpdateStatusProvider = TradeRequestUpdateStatusFamily();

/// See also [TradeRequestUpdateStatus].
class TradeRequestUpdateStatusFamily extends Family<ProviderStatus<Unit>> {
  /// See also [TradeRequestUpdateStatus].
  const TradeRequestUpdateStatusFamily();

  /// See also [TradeRequestUpdateStatus].
  TradeRequestUpdateStatusProvider call(
    TradeRequestId id,
  ) {
    return TradeRequestUpdateStatusProvider(
      id,
    );
  }

  @override
  TradeRequestUpdateStatusProvider getProviderOverride(
    covariant TradeRequestUpdateStatusProvider provider,
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
  String? get name => r'tradeRequestUpdateStatusProvider';
}

/// See also [TradeRequestUpdateStatus].
class TradeRequestUpdateStatusProvider extends AutoDisposeNotifierProviderImpl<
    TradeRequestUpdateStatus, ProviderStatus<Unit>> {
  /// See also [TradeRequestUpdateStatus].
  TradeRequestUpdateStatusProvider(
    TradeRequestId id,
  ) : this._internal(
          () => TradeRequestUpdateStatus()..id = id,
          from: tradeRequestUpdateStatusProvider,
          name: r'tradeRequestUpdateStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestUpdateStatusHash,
          dependencies: TradeRequestUpdateStatusFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestUpdateStatusFamily._allTransitiveDependencies,
          id: id,
        );

  TradeRequestUpdateStatusProvider._internal(
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
    covariant TradeRequestUpdateStatus notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(TradeRequestUpdateStatus Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestUpdateStatusProvider._internal(
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
  AutoDisposeNotifierProviderElement<TradeRequestUpdateStatus,
      ProviderStatus<Unit>> createElement() {
    return _TradeRequestUpdateStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestUpdateStatusProvider && other.id == id;
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
mixin TradeRequestUpdateStatusRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  TradeRequestId get id;
}

class _TradeRequestUpdateStatusProviderElement
    extends AutoDisposeNotifierProviderElement<TradeRequestUpdateStatus,
        ProviderStatus<Unit>> with TradeRequestUpdateStatusRef {
  _TradeRequestUpdateStatusProviderElement(super.provider);

  @override
  TradeRequestId get id => (origin as TradeRequestUpdateStatusProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
