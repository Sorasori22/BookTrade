// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestPaginatedAtIndexHash() =>
    r'e8c3995464afe5abb86517d771d7ec77a92c9a90';

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

/// See also [tradeRequestPaginatedAtIndex].
@ProviderFor(tradeRequestPaginatedAtIndex)
const tradeRequestPaginatedAtIndexProvider =
    TradeRequestPaginatedAtIndexFamily();

/// See also [tradeRequestPaginatedAtIndex].
class TradeRequestPaginatedAtIndexFamily
    extends Family<PaginatedItem<TradeRequestModel>?> {
  /// See also [tradeRequestPaginatedAtIndex].
  const TradeRequestPaginatedAtIndexFamily();

  /// See also [tradeRequestPaginatedAtIndex].
  TradeRequestPaginatedAtIndexProvider call(
    int index, {
    required TradeRequestListParam param,
  }) {
    return TradeRequestPaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  TradeRequestPaginatedAtIndexProvider getProviderOverride(
    covariant TradeRequestPaginatedAtIndexProvider provider,
  ) {
    return call(
      provider.index,
      param: provider.param,
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
  String? get name => r'tradeRequestPaginatedAtIndexProvider';
}

/// See also [tradeRequestPaginatedAtIndex].
class TradeRequestPaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<TradeRequestModel>?> {
  /// See also [tradeRequestPaginatedAtIndex].
  TradeRequestPaginatedAtIndexProvider(
    int index, {
    required TradeRequestListParam param,
  }) : this._internal(
          (ref) => tradeRequestPaginatedAtIndex(
            ref as TradeRequestPaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: tradeRequestPaginatedAtIndexProvider,
          name: r'tradeRequestPaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestPaginatedAtIndexHash,
          dependencies: TradeRequestPaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestPaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  TradeRequestPaginatedAtIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
    required this.param,
  }) : super.internal();

  final int index;
  final TradeRequestListParam param;

  @override
  Override overrideWith(
    PaginatedItem<TradeRequestModel>? Function(
            TradeRequestPaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestPaginatedAtIndexProvider._internal(
        (ref) => create(ref as TradeRequestPaginatedAtIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
        param: param,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<PaginatedItem<TradeRequestModel>?>
      createElement() {
    return _TradeRequestPaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestPaginatedAtIndexProvider &&
        other.index == index &&
        other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TradeRequestPaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<TradeRequestModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  TradeRequestListParam get param;
}

class _TradeRequestPaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<TradeRequestModel>?>
    with TradeRequestPaginatedAtIndexRef {
  _TradeRequestPaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as TradeRequestPaginatedAtIndexProvider).index;
  @override
  TradeRequestListParam get param =>
      (origin as TradeRequestPaginatedAtIndexProvider).param;
}

String _$tradeRequestListPaginationHash() =>
    r'9039dc47524b0ac24d8bc8afc72acba71eaefe91';

abstract class _$TradeRequestListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<TradeRequestModel>> {
  late final int page;
  late final TradeRequestListParam param;

  FutureOr<IList<TradeRequestModel>> build({
    required int page,
    required TradeRequestListParam param,
  });
}

/// See also [TradeRequestListPagination].
@ProviderFor(TradeRequestListPagination)
const tradeRequestListPaginationProvider = TradeRequestListPaginationFamily();

/// See also [TradeRequestListPagination].
class TradeRequestListPaginationFamily
    extends Family<AsyncValue<IList<TradeRequestModel>>> {
  /// See also [TradeRequestListPagination].
  const TradeRequestListPaginationFamily();

  /// See also [TradeRequestListPagination].
  TradeRequestListPaginationProvider call({
    required int page,
    required TradeRequestListParam param,
  }) {
    return TradeRequestListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  TradeRequestListPaginationProvider getProviderOverride(
    covariant TradeRequestListPaginationProvider provider,
  ) {
    return call(
      page: provider.page,
      param: provider.param,
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
  String? get name => r'tradeRequestListPaginationProvider';
}

/// See also [TradeRequestListPagination].
class TradeRequestListPaginationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TradeRequestListPagination,
        IList<TradeRequestModel>> {
  /// See also [TradeRequestListPagination].
  TradeRequestListPaginationProvider({
    required int page,
    required TradeRequestListParam param,
  }) : this._internal(
          () => TradeRequestListPagination()
            ..page = page
            ..param = param,
          from: tradeRequestListPaginationProvider,
          name: r'tradeRequestListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestListPaginationHash,
          dependencies: TradeRequestListPaginationFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  TradeRequestListPaginationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.param,
  }) : super.internal();

  final int page;
  final TradeRequestListParam param;

  @override
  FutureOr<IList<TradeRequestModel>> runNotifierBuild(
    covariant TradeRequestListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(TradeRequestListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestListPaginationProvider._internal(
        () => create()
          ..page = page
          ..param = param,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        param: param,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TradeRequestListPagination,
      IList<TradeRequestModel>> createElement() {
    return _TradeRequestListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestListPaginationProvider &&
        other.page == page &&
        other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TradeRequestListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<TradeRequestModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  TradeRequestListParam get param;
}

class _TradeRequestListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TradeRequestListPagination,
        IList<TradeRequestModel>> with TradeRequestListPaginationRef {
  _TradeRequestListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as TradeRequestListPaginationProvider).page;
  @override
  TradeRequestListParam get param =>
      (origin as TradeRequestListPaginationProvider).param;
}

String _$tradeRequestPaginationStateHash() =>
    r'bdc45f7338f9740d938a59c9898d0009d8454ed1';

abstract class _$TradeRequestPaginationState
    extends BuildlessAutoDisposeNotifier<
        ({bool isLoading, int totalPages, int currentPage})> {
  late final TradeRequestListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required TradeRequestListParam param,
  });
}

/// See also [TradeRequestPaginationState].
@ProviderFor(TradeRequestPaginationState)
const tradeRequestPaginationStateProvider = TradeRequestPaginationStateFamily();

/// See also [TradeRequestPaginationState].
class TradeRequestPaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [TradeRequestPaginationState].
  const TradeRequestPaginationStateFamily();

  /// See also [TradeRequestPaginationState].
  TradeRequestPaginationStateProvider call({
    required TradeRequestListParam param,
  }) {
    return TradeRequestPaginationStateProvider(
      param: param,
    );
  }

  @override
  TradeRequestPaginationStateProvider getProviderOverride(
    covariant TradeRequestPaginationStateProvider provider,
  ) {
    return call(
      param: provider.param,
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
  String? get name => r'tradeRequestPaginationStateProvider';
}

/// See also [TradeRequestPaginationState].
class TradeRequestPaginationStateProvider
    extends AutoDisposeNotifierProviderImpl<TradeRequestPaginationState,
        ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [TradeRequestPaginationState].
  TradeRequestPaginationStateProvider({
    required TradeRequestListParam param,
  }) : this._internal(
          () => TradeRequestPaginationState()..param = param,
          from: tradeRequestPaginationStateProvider,
          name: r'tradeRequestPaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestPaginationStateHash,
          dependencies: TradeRequestPaginationStateFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestPaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  TradeRequestPaginationStateProvider._internal(
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
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant TradeRequestPaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(TradeRequestPaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestPaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<TradeRequestPaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _TradeRequestPaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestPaginationStateProvider && other.param == param;
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
mixin TradeRequestPaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  TradeRequestListParam get param;
}

class _TradeRequestPaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<TradeRequestPaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with TradeRequestPaginationStateRef {
  _TradeRequestPaginationStateProviderElement(super.provider);

  @override
  TradeRequestListParam get param =>
      (origin as TradeRequestPaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
