// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'my_trade_request_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myTradeRequestListHash() =>
    r'fce4565649e47de74e6846c8e80f1afc336a9c30';

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

abstract class _$MyTradeRequestList
    extends BuildlessAutoDisposeAsyncNotifier<IList<TradeRequestModel>> {
  late final ProfileId? requesterId;
  late final TradeRequestStatus? status;

  FutureOr<IList<TradeRequestModel>> build({
    ProfileId? requesterId,
    TradeRequestStatus? status,
  });
}

/// List of trade requests people requested to me
///
/// Copied from [MyTradeRequestList].
@ProviderFor(MyTradeRequestList)
const myTradeRequestListProvider = MyTradeRequestListFamily();

/// List of trade requests people requested to me
///
/// Copied from [MyTradeRequestList].
class MyTradeRequestListFamily
    extends Family<AsyncValue<IList<TradeRequestModel>>> {
  /// List of trade requests people requested to me
  ///
  /// Copied from [MyTradeRequestList].
  const MyTradeRequestListFamily();

  /// List of trade requests people requested to me
  ///
  /// Copied from [MyTradeRequestList].
  MyTradeRequestListProvider call({
    ProfileId? requesterId,
    TradeRequestStatus? status,
  }) {
    return MyTradeRequestListProvider(
      requesterId: requesterId,
      status: status,
    );
  }

  @override
  MyTradeRequestListProvider getProviderOverride(
    covariant MyTradeRequestListProvider provider,
  ) {
    return call(
      requesterId: provider.requesterId,
      status: provider.status,
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
  String? get name => r'myTradeRequestListProvider';
}

/// List of trade requests people requested to me
///
/// Copied from [MyTradeRequestList].
class MyTradeRequestListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MyTradeRequestList, IList<TradeRequestModel>> {
  /// List of trade requests people requested to me
  ///
  /// Copied from [MyTradeRequestList].
  MyTradeRequestListProvider({
    ProfileId? requesterId,
    TradeRequestStatus? status,
  }) : this._internal(
          () => MyTradeRequestList()
            ..requesterId = requesterId
            ..status = status,
          from: myTradeRequestListProvider,
          name: r'myTradeRequestListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myTradeRequestListHash,
          dependencies: MyTradeRequestListFamily._dependencies,
          allTransitiveDependencies:
              MyTradeRequestListFamily._allTransitiveDependencies,
          requesterId: requesterId,
          status: status,
        );

  MyTradeRequestListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requesterId,
    required this.status,
  }) : super.internal();

  final ProfileId? requesterId;
  final TradeRequestStatus? status;

  @override
  FutureOr<IList<TradeRequestModel>> runNotifierBuild(
    covariant MyTradeRequestList notifier,
  ) {
    return notifier.build(
      requesterId: requesterId,
      status: status,
    );
  }

  @override
  Override overrideWith(MyTradeRequestList Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyTradeRequestListProvider._internal(
        () => create()
          ..requesterId = requesterId
          ..status = status,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requesterId: requesterId,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MyTradeRequestList,
      IList<TradeRequestModel>> createElement() {
    return _MyTradeRequestListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyTradeRequestListProvider &&
        other.requesterId == requesterId &&
        other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requesterId.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyTradeRequestListRef
    on AutoDisposeAsyncNotifierProviderRef<IList<TradeRequestModel>> {
  /// The parameter `requesterId` of this provider.
  ProfileId? get requesterId;

  /// The parameter `status` of this provider.
  TradeRequestStatus? get status;
}

class _MyTradeRequestListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MyTradeRequestList,
        IList<TradeRequestModel>> with MyTradeRequestListRef {
  _MyTradeRequestListProviderElement(super.provider);

  @override
  ProfileId? get requesterId =>
      (origin as MyTradeRequestListProvider).requesterId;
  @override
  TradeRequestStatus? get status =>
      (origin as MyTradeRequestListProvider).status;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
