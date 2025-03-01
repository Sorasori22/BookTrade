// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestDetailHash() =>
    r'7eeec6418e29494501f32f17554df94562d5d05a';

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

abstract class _$TradeRequestDetail
    extends BuildlessAutoDisposeAsyncNotifier<TradeRequestModel> {
  late final TradeRequestId id;

  FutureOr<TradeRequestModel> build(
    TradeRequestId id,
  );
}

/// See also [TradeRequestDetail].
@ProviderFor(TradeRequestDetail)
const tradeRequestDetailProvider = TradeRequestDetailFamily();

/// See also [TradeRequestDetail].
class TradeRequestDetailFamily extends Family<AsyncValue<TradeRequestModel>> {
  /// See also [TradeRequestDetail].
  const TradeRequestDetailFamily();

  /// See also [TradeRequestDetail].
  TradeRequestDetailProvider call(
    TradeRequestId id,
  ) {
    return TradeRequestDetailProvider(
      id,
    );
  }

  @override
  TradeRequestDetailProvider getProviderOverride(
    covariant TradeRequestDetailProvider provider,
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
  String? get name => r'tradeRequestDetailProvider';
}

/// See also [TradeRequestDetail].
class TradeRequestDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TradeRequestDetail, TradeRequestModel> {
  /// See also [TradeRequestDetail].
  TradeRequestDetailProvider(
    TradeRequestId id,
  ) : this._internal(
          () => TradeRequestDetail()..id = id,
          from: tradeRequestDetailProvider,
          name: r'tradeRequestDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestDetailHash,
          dependencies: TradeRequestDetailFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestDetailFamily._allTransitiveDependencies,
          id: id,
        );

  TradeRequestDetailProvider._internal(
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
  FutureOr<TradeRequestModel> runNotifierBuild(
    covariant TradeRequestDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(TradeRequestDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<TradeRequestDetail, TradeRequestModel>
      createElement() {
    return _TradeRequestDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestDetailProvider && other.id == id;
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
mixin TradeRequestDetailRef
    on AutoDisposeAsyncNotifierProviderRef<TradeRequestModel> {
  /// The parameter `id` of this provider.
  TradeRequestId get id;
}

class _TradeRequestDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TradeRequestDetail,
        TradeRequestModel> with TradeRequestDetailRef {
  _TradeRequestDetailProviderElement(super.provider);

  @override
  TradeRequestId get id => (origin as TradeRequestDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
