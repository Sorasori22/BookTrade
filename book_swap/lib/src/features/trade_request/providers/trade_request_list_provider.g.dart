// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestListHash() => r'618a543eb7febff2da967a3d3ebc976e9d22f1c1';

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

abstract class _$TradeRequestList
    extends BuildlessAutoDisposeAsyncNotifier<IList<TradeRequestModel>> {
  late final TradeRequestListParam param;

  FutureOr<IList<TradeRequestModel>> build(
    TradeRequestListParam param,
  );
}

/// See also [TradeRequestList].
@ProviderFor(TradeRequestList)
const tradeRequestListProvider = TradeRequestListFamily();

/// See also [TradeRequestList].
class TradeRequestListFamily
    extends Family<AsyncValue<IList<TradeRequestModel>>> {
  /// See also [TradeRequestList].
  const TradeRequestListFamily();

  /// See also [TradeRequestList].
  TradeRequestListProvider call(
    TradeRequestListParam param,
  ) {
    return TradeRequestListProvider(
      param,
    );
  }

  @override
  TradeRequestListProvider getProviderOverride(
    covariant TradeRequestListProvider provider,
  ) {
    return call(
      provider.param,
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
  String? get name => r'tradeRequestListProvider';
}

/// See also [TradeRequestList].
class TradeRequestListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TradeRequestList, IList<TradeRequestModel>> {
  /// See also [TradeRequestList].
  TradeRequestListProvider(
    TradeRequestListParam param,
  ) : this._internal(
          () => TradeRequestList()..param = param,
          from: tradeRequestListProvider,
          name: r'tradeRequestListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestListHash,
          dependencies: TradeRequestListFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestListFamily._allTransitiveDependencies,
          param: param,
        );

  TradeRequestListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final TradeRequestListParam param;

  @override
  FutureOr<IList<TradeRequestModel>> runNotifierBuild(
    covariant TradeRequestList notifier,
  ) {
    return notifier.build(
      param,
    );
  }

  @override
  Override overrideWith(TradeRequestList Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestListProvider._internal(
        () => create()..param = param,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        param: param,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TradeRequestList,
      IList<TradeRequestModel>> createElement() {
    return _TradeRequestListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestListProvider && other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TradeRequestListRef
    on AutoDisposeAsyncNotifierProviderRef<IList<TradeRequestModel>> {
  /// The parameter `param` of this provider.
  TradeRequestListParam get param;
}

class _TradeRequestListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TradeRequestList,
        IList<TradeRequestModel>> with TradeRequestListRef {
  _TradeRequestListProviderElement(super.provider);

  @override
  TradeRequestListParam get param => (origin as TradeRequestListProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
