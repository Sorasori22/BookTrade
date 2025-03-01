// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'wishlist_item_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wishlistItemPaginatedAtIndexHash() =>
    r'084eeffe7e12d3898b059ac13ecdc2cceb677d97';

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

/// See also [wishlistItemPaginatedAtIndex].
@ProviderFor(wishlistItemPaginatedAtIndex)
const wishlistItemPaginatedAtIndexProvider =
    WishlistItemPaginatedAtIndexFamily();

/// See also [wishlistItemPaginatedAtIndex].
class WishlistItemPaginatedAtIndexFamily
    extends Family<PaginatedItem<WishlistItemModel>?> {
  /// See also [wishlistItemPaginatedAtIndex].
  const WishlistItemPaginatedAtIndexFamily();

  /// See also [wishlistItemPaginatedAtIndex].
  WishlistItemPaginatedAtIndexProvider call(
    int index, {
    required WishlistItemListParam param,
  }) {
    return WishlistItemPaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  WishlistItemPaginatedAtIndexProvider getProviderOverride(
    covariant WishlistItemPaginatedAtIndexProvider provider,
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
  String? get name => r'wishlistItemPaginatedAtIndexProvider';
}

/// See also [wishlistItemPaginatedAtIndex].
class WishlistItemPaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<WishlistItemModel>?> {
  /// See also [wishlistItemPaginatedAtIndex].
  WishlistItemPaginatedAtIndexProvider(
    int index, {
    required WishlistItemListParam param,
  }) : this._internal(
          (ref) => wishlistItemPaginatedAtIndex(
            ref as WishlistItemPaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: wishlistItemPaginatedAtIndexProvider,
          name: r'wishlistItemPaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$wishlistItemPaginatedAtIndexHash,
          dependencies: WishlistItemPaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              WishlistItemPaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  WishlistItemPaginatedAtIndexProvider._internal(
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
  final WishlistItemListParam param;

  @override
  Override overrideWith(
    PaginatedItem<WishlistItemModel>? Function(
            WishlistItemPaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WishlistItemPaginatedAtIndexProvider._internal(
        (ref) => create(ref as WishlistItemPaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<WishlistItemModel>?>
      createElement() {
    return _WishlistItemPaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WishlistItemPaginatedAtIndexProvider &&
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
mixin WishlistItemPaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<WishlistItemModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  WishlistItemListParam get param;
}

class _WishlistItemPaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<WishlistItemModel>?>
    with WishlistItemPaginatedAtIndexRef {
  _WishlistItemPaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as WishlistItemPaginatedAtIndexProvider).index;
  @override
  WishlistItemListParam get param =>
      (origin as WishlistItemPaginatedAtIndexProvider).param;
}

String _$wishlistItemListPaginationHash() =>
    r'a78fade39115762aafcccbfe01a899eb809dacef';

abstract class _$WishlistItemListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<WishlistItemModel>> {
  late final int page;
  late final WishlistItemListParam param;

  FutureOr<IList<WishlistItemModel>> build({
    required int page,
    required WishlistItemListParam param,
  });
}

/// See also [WishlistItemListPagination].
@ProviderFor(WishlistItemListPagination)
const wishlistItemListPaginationProvider = WishlistItemListPaginationFamily();

/// See also [WishlistItemListPagination].
class WishlistItemListPaginationFamily
    extends Family<AsyncValue<IList<WishlistItemModel>>> {
  /// See also [WishlistItemListPagination].
  const WishlistItemListPaginationFamily();

  /// See also [WishlistItemListPagination].
  WishlistItemListPaginationProvider call({
    required int page,
    required WishlistItemListParam param,
  }) {
    return WishlistItemListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  WishlistItemListPaginationProvider getProviderOverride(
    covariant WishlistItemListPaginationProvider provider,
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
  String? get name => r'wishlistItemListPaginationProvider';
}

/// See also [WishlistItemListPagination].
class WishlistItemListPaginationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<WishlistItemListPagination,
        IList<WishlistItemModel>> {
  /// See also [WishlistItemListPagination].
  WishlistItemListPaginationProvider({
    required int page,
    required WishlistItemListParam param,
  }) : this._internal(
          () => WishlistItemListPagination()
            ..page = page
            ..param = param,
          from: wishlistItemListPaginationProvider,
          name: r'wishlistItemListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$wishlistItemListPaginationHash,
          dependencies: WishlistItemListPaginationFamily._dependencies,
          allTransitiveDependencies:
              WishlistItemListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  WishlistItemListPaginationProvider._internal(
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
  final WishlistItemListParam param;

  @override
  FutureOr<IList<WishlistItemModel>> runNotifierBuild(
    covariant WishlistItemListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(WishlistItemListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: WishlistItemListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<WishlistItemListPagination,
      IList<WishlistItemModel>> createElement() {
    return _WishlistItemListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WishlistItemListPaginationProvider &&
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
mixin WishlistItemListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<WishlistItemModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  WishlistItemListParam get param;
}

class _WishlistItemListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WishlistItemListPagination,
        IList<WishlistItemModel>> with WishlistItemListPaginationRef {
  _WishlistItemListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as WishlistItemListPaginationProvider).page;
  @override
  WishlistItemListParam get param =>
      (origin as WishlistItemListPaginationProvider).param;
}

String _$wishlistItemPaginationStateHash() =>
    r'4fcae87563c6697b38009194e964026f39cfd540';

abstract class _$WishlistItemPaginationState
    extends BuildlessAutoDisposeNotifier<
        ({bool isLoading, int totalPages, int currentPage})> {
  late final WishlistItemListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required WishlistItemListParam param,
  });
}

/// See also [WishlistItemPaginationState].
@ProviderFor(WishlistItemPaginationState)
const wishlistItemPaginationStateProvider = WishlistItemPaginationStateFamily();

/// See also [WishlistItemPaginationState].
class WishlistItemPaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [WishlistItemPaginationState].
  const WishlistItemPaginationStateFamily();

  /// See also [WishlistItemPaginationState].
  WishlistItemPaginationStateProvider call({
    required WishlistItemListParam param,
  }) {
    return WishlistItemPaginationStateProvider(
      param: param,
    );
  }

  @override
  WishlistItemPaginationStateProvider getProviderOverride(
    covariant WishlistItemPaginationStateProvider provider,
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
  String? get name => r'wishlistItemPaginationStateProvider';
}

/// See also [WishlistItemPaginationState].
class WishlistItemPaginationStateProvider
    extends AutoDisposeNotifierProviderImpl<WishlistItemPaginationState,
        ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [WishlistItemPaginationState].
  WishlistItemPaginationStateProvider({
    required WishlistItemListParam param,
  }) : this._internal(
          () => WishlistItemPaginationState()..param = param,
          from: wishlistItemPaginationStateProvider,
          name: r'wishlistItemPaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$wishlistItemPaginationStateHash,
          dependencies: WishlistItemPaginationStateFamily._dependencies,
          allTransitiveDependencies:
              WishlistItemPaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  WishlistItemPaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final WishlistItemListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant WishlistItemPaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(WishlistItemPaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: WishlistItemPaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<WishlistItemPaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _WishlistItemPaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WishlistItemPaginationStateProvider && other.param == param;
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
mixin WishlistItemPaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  WishlistItemListParam get param;
}

class _WishlistItemPaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<WishlistItemPaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with WishlistItemPaginationStateRef {
  _WishlistItemPaginationStateProviderElement(super.provider);

  @override
  WishlistItemListParam get param =>
      (origin as WishlistItemPaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
