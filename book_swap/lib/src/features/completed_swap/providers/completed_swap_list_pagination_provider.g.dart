// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'completed_swap_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$completedSwapPaginatedAtIndexHash() =>
    r'fc6dc684c9acca89279b40de063dfe5ca4871ec5';

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

/// See also [completedSwapPaginatedAtIndex].
@ProviderFor(completedSwapPaginatedAtIndex)
const completedSwapPaginatedAtIndexProvider =
    CompletedSwapPaginatedAtIndexFamily();

/// See also [completedSwapPaginatedAtIndex].
class CompletedSwapPaginatedAtIndexFamily
    extends Family<PaginatedItem<CompletedSwapModel>?> {
  /// See also [completedSwapPaginatedAtIndex].
  const CompletedSwapPaginatedAtIndexFamily();

  /// See also [completedSwapPaginatedAtIndex].
  CompletedSwapPaginatedAtIndexProvider call(
    int index, {
    required CompletedSwapListParam param,
  }) {
    return CompletedSwapPaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  CompletedSwapPaginatedAtIndexProvider getProviderOverride(
    covariant CompletedSwapPaginatedAtIndexProvider provider,
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
  String? get name => r'completedSwapPaginatedAtIndexProvider';
}

/// See also [completedSwapPaginatedAtIndex].
class CompletedSwapPaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<CompletedSwapModel>?> {
  /// See also [completedSwapPaginatedAtIndex].
  CompletedSwapPaginatedAtIndexProvider(
    int index, {
    required CompletedSwapListParam param,
  }) : this._internal(
          (ref) => completedSwapPaginatedAtIndex(
            ref as CompletedSwapPaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: completedSwapPaginatedAtIndexProvider,
          name: r'completedSwapPaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$completedSwapPaginatedAtIndexHash,
          dependencies: CompletedSwapPaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              CompletedSwapPaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  CompletedSwapPaginatedAtIndexProvider._internal(
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
  final CompletedSwapListParam param;

  @override
  Override overrideWith(
    PaginatedItem<CompletedSwapModel>? Function(
            CompletedSwapPaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompletedSwapPaginatedAtIndexProvider._internal(
        (ref) => create(ref as CompletedSwapPaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<CompletedSwapModel>?>
      createElement() {
    return _CompletedSwapPaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompletedSwapPaginatedAtIndexProvider &&
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
mixin CompletedSwapPaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<CompletedSwapModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  CompletedSwapListParam get param;
}

class _CompletedSwapPaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<CompletedSwapModel>?>
    with CompletedSwapPaginatedAtIndexRef {
  _CompletedSwapPaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as CompletedSwapPaginatedAtIndexProvider).index;
  @override
  CompletedSwapListParam get param =>
      (origin as CompletedSwapPaginatedAtIndexProvider).param;
}

String _$completedSwapListPaginationHash() =>
    r'343d18f693914748db7de7b336180f1e82cfc04b';

abstract class _$CompletedSwapListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<CompletedSwapModel>> {
  late final int page;
  late final CompletedSwapListParam param;

  FutureOr<IList<CompletedSwapModel>> build({
    required int page,
    required CompletedSwapListParam param,
  });
}

/// See also [CompletedSwapListPagination].
@ProviderFor(CompletedSwapListPagination)
const completedSwapListPaginationProvider = CompletedSwapListPaginationFamily();

/// See also [CompletedSwapListPagination].
class CompletedSwapListPaginationFamily
    extends Family<AsyncValue<IList<CompletedSwapModel>>> {
  /// See also [CompletedSwapListPagination].
  const CompletedSwapListPaginationFamily();

  /// See also [CompletedSwapListPagination].
  CompletedSwapListPaginationProvider call({
    required int page,
    required CompletedSwapListParam param,
  }) {
    return CompletedSwapListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  CompletedSwapListPaginationProvider getProviderOverride(
    covariant CompletedSwapListPaginationProvider provider,
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
  String? get name => r'completedSwapListPaginationProvider';
}

/// See also [CompletedSwapListPagination].
class CompletedSwapListPaginationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CompletedSwapListPagination,
        IList<CompletedSwapModel>> {
  /// See also [CompletedSwapListPagination].
  CompletedSwapListPaginationProvider({
    required int page,
    required CompletedSwapListParam param,
  }) : this._internal(
          () => CompletedSwapListPagination()
            ..page = page
            ..param = param,
          from: completedSwapListPaginationProvider,
          name: r'completedSwapListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$completedSwapListPaginationHash,
          dependencies: CompletedSwapListPaginationFamily._dependencies,
          allTransitiveDependencies:
              CompletedSwapListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  CompletedSwapListPaginationProvider._internal(
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
  final CompletedSwapListParam param;

  @override
  FutureOr<IList<CompletedSwapModel>> runNotifierBuild(
    covariant CompletedSwapListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(CompletedSwapListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: CompletedSwapListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<CompletedSwapListPagination,
      IList<CompletedSwapModel>> createElement() {
    return _CompletedSwapListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompletedSwapListPaginationProvider &&
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
mixin CompletedSwapListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<CompletedSwapModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  CompletedSwapListParam get param;
}

class _CompletedSwapListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CompletedSwapListPagination,
        IList<CompletedSwapModel>> with CompletedSwapListPaginationRef {
  _CompletedSwapListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as CompletedSwapListPaginationProvider).page;
  @override
  CompletedSwapListParam get param =>
      (origin as CompletedSwapListPaginationProvider).param;
}

String _$completedSwapPaginationStateHash() =>
    r'0843f1064dfdf30e0fc4df7823fac23bc1d92db3';

abstract class _$CompletedSwapPaginationState
    extends BuildlessAutoDisposeNotifier<
        ({bool isLoading, int totalPages, int currentPage})> {
  late final CompletedSwapListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required CompletedSwapListParam param,
  });
}

/// See also [CompletedSwapPaginationState].
@ProviderFor(CompletedSwapPaginationState)
const completedSwapPaginationStateProvider =
    CompletedSwapPaginationStateFamily();

/// See also [CompletedSwapPaginationState].
class CompletedSwapPaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [CompletedSwapPaginationState].
  const CompletedSwapPaginationStateFamily();

  /// See also [CompletedSwapPaginationState].
  CompletedSwapPaginationStateProvider call({
    required CompletedSwapListParam param,
  }) {
    return CompletedSwapPaginationStateProvider(
      param: param,
    );
  }

  @override
  CompletedSwapPaginationStateProvider getProviderOverride(
    covariant CompletedSwapPaginationStateProvider provider,
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
  String? get name => r'completedSwapPaginationStateProvider';
}

/// See also [CompletedSwapPaginationState].
class CompletedSwapPaginationStateProvider
    extends AutoDisposeNotifierProviderImpl<CompletedSwapPaginationState,
        ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [CompletedSwapPaginationState].
  CompletedSwapPaginationStateProvider({
    required CompletedSwapListParam param,
  }) : this._internal(
          () => CompletedSwapPaginationState()..param = param,
          from: completedSwapPaginationStateProvider,
          name: r'completedSwapPaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$completedSwapPaginationStateHash,
          dependencies: CompletedSwapPaginationStateFamily._dependencies,
          allTransitiveDependencies:
              CompletedSwapPaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  CompletedSwapPaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final CompletedSwapListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant CompletedSwapPaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(CompletedSwapPaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: CompletedSwapPaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<CompletedSwapPaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _CompletedSwapPaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompletedSwapPaginationStateProvider &&
        other.param == param;
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
mixin CompletedSwapPaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  CompletedSwapListParam get param;
}

class _CompletedSwapPaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<CompletedSwapPaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with CompletedSwapPaginationStateRef {
  _CompletedSwapPaginationStateProviderElement(super.provider);

  @override
  CompletedSwapListParam get param =>
      (origin as CompletedSwapPaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
