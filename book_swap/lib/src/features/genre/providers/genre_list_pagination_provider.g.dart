// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'genre_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$genrePaginatedAtIndexHash() =>
    r'881337a92005cdaceb795932faefbfcee1d5bf8c';

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

/// See also [genrePaginatedAtIndex].
@ProviderFor(genrePaginatedAtIndex)
const genrePaginatedAtIndexProvider = GenrePaginatedAtIndexFamily();

/// See also [genrePaginatedAtIndex].
class GenrePaginatedAtIndexFamily extends Family<PaginatedItem<GenreModel>?> {
  /// See also [genrePaginatedAtIndex].
  const GenrePaginatedAtIndexFamily();

  /// See also [genrePaginatedAtIndex].
  GenrePaginatedAtIndexProvider call(
    int index, {
    required GenreListParam param,
  }) {
    return GenrePaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  GenrePaginatedAtIndexProvider getProviderOverride(
    covariant GenrePaginatedAtIndexProvider provider,
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
  String? get name => r'genrePaginatedAtIndexProvider';
}

/// See also [genrePaginatedAtIndex].
class GenrePaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<GenreModel>?> {
  /// See also [genrePaginatedAtIndex].
  GenrePaginatedAtIndexProvider(
    int index, {
    required GenreListParam param,
  }) : this._internal(
          (ref) => genrePaginatedAtIndex(
            ref as GenrePaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: genrePaginatedAtIndexProvider,
          name: r'genrePaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$genrePaginatedAtIndexHash,
          dependencies: GenrePaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              GenrePaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  GenrePaginatedAtIndexProvider._internal(
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
  final GenreListParam param;

  @override
  Override overrideWith(
    PaginatedItem<GenreModel>? Function(GenrePaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GenrePaginatedAtIndexProvider._internal(
        (ref) => create(ref as GenrePaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<GenreModel>?> createElement() {
    return _GenrePaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenrePaginatedAtIndexProvider &&
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
mixin GenrePaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<GenreModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  GenreListParam get param;
}

class _GenrePaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<GenreModel>?>
    with GenrePaginatedAtIndexRef {
  _GenrePaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as GenrePaginatedAtIndexProvider).index;
  @override
  GenreListParam get param => (origin as GenrePaginatedAtIndexProvider).param;
}

String _$genreListPaginationHash() =>
    r'ffa872a5fcfa7cee398006c77abc60bcd21137f0';

abstract class _$GenreListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<GenreModel>> {
  late final int page;
  late final GenreListParam param;

  FutureOr<IList<GenreModel>> build({
    required int page,
    required GenreListParam param,
  });
}

/// See also [GenreListPagination].
@ProviderFor(GenreListPagination)
const genreListPaginationProvider = GenreListPaginationFamily();

/// See also [GenreListPagination].
class GenreListPaginationFamily extends Family<AsyncValue<IList<GenreModel>>> {
  /// See also [GenreListPagination].
  const GenreListPaginationFamily();

  /// See also [GenreListPagination].
  GenreListPaginationProvider call({
    required int page,
    required GenreListParam param,
  }) {
    return GenreListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  GenreListPaginationProvider getProviderOverride(
    covariant GenreListPaginationProvider provider,
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
  String? get name => r'genreListPaginationProvider';
}

/// See also [GenreListPagination].
class GenreListPaginationProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GenreListPagination, IList<GenreModel>> {
  /// See also [GenreListPagination].
  GenreListPaginationProvider({
    required int page,
    required GenreListParam param,
  }) : this._internal(
          () => GenreListPagination()
            ..page = page
            ..param = param,
          from: genreListPaginationProvider,
          name: r'genreListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$genreListPaginationHash,
          dependencies: GenreListPaginationFamily._dependencies,
          allTransitiveDependencies:
              GenreListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  GenreListPaginationProvider._internal(
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
  final GenreListParam param;

  @override
  FutureOr<IList<GenreModel>> runNotifierBuild(
    covariant GenreListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(GenreListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: GenreListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GenreListPagination,
      IList<GenreModel>> createElement() {
    return _GenreListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenreListPaginationProvider &&
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
mixin GenreListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<GenreModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  GenreListParam get param;
}

class _GenreListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GenreListPagination,
        IList<GenreModel>> with GenreListPaginationRef {
  _GenreListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as GenreListPaginationProvider).page;
  @override
  GenreListParam get param => (origin as GenreListPaginationProvider).param;
}

String _$genrePaginationStateHash() =>
    r'e273a13a3c3bc91ba3a1e5eb61af52cccfaea76b';

abstract class _$GenrePaginationState extends BuildlessAutoDisposeNotifier<
    ({bool isLoading, int totalPages, int currentPage})> {
  late final GenreListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required GenreListParam param,
  });
}

/// See also [GenrePaginationState].
@ProviderFor(GenrePaginationState)
const genrePaginationStateProvider = GenrePaginationStateFamily();

/// See also [GenrePaginationState].
class GenrePaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [GenrePaginationState].
  const GenrePaginationStateFamily();

  /// See also [GenrePaginationState].
  GenrePaginationStateProvider call({
    required GenreListParam param,
  }) {
    return GenrePaginationStateProvider(
      param: param,
    );
  }

  @override
  GenrePaginationStateProvider getProviderOverride(
    covariant GenrePaginationStateProvider provider,
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
  String? get name => r'genrePaginationStateProvider';
}

/// See also [GenrePaginationState].
class GenrePaginationStateProvider extends AutoDisposeNotifierProviderImpl<
    GenrePaginationState, ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [GenrePaginationState].
  GenrePaginationStateProvider({
    required GenreListParam param,
  }) : this._internal(
          () => GenrePaginationState()..param = param,
          from: genrePaginationStateProvider,
          name: r'genrePaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$genrePaginationStateHash,
          dependencies: GenrePaginationStateFamily._dependencies,
          allTransitiveDependencies:
              GenrePaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  GenrePaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final GenreListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant GenrePaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(GenrePaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: GenrePaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<GenrePaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _GenrePaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenrePaginationStateProvider && other.param == param;
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
mixin GenrePaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  GenreListParam get param;
}

class _GenrePaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<GenrePaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with GenrePaginationStateRef {
  _GenrePaginationStateProviderElement(super.provider);

  @override
  GenreListParam get param => (origin as GenrePaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
