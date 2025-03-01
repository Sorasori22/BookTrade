// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_rating_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookRatingPaginatedAtIndexHash() =>
    r'5974ce9be7b63baea1d3931ff722f92bb9645e3c';

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

/// See also [bookRatingPaginatedAtIndex].
@ProviderFor(bookRatingPaginatedAtIndex)
const bookRatingPaginatedAtIndexProvider = BookRatingPaginatedAtIndexFamily();

/// See also [bookRatingPaginatedAtIndex].
class BookRatingPaginatedAtIndexFamily
    extends Family<PaginatedItem<BookRatingModel>?> {
  /// See also [bookRatingPaginatedAtIndex].
  const BookRatingPaginatedAtIndexFamily();

  /// See also [bookRatingPaginatedAtIndex].
  BookRatingPaginatedAtIndexProvider call(
    int index, {
    required BookRatingListParam param,
  }) {
    return BookRatingPaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  BookRatingPaginatedAtIndexProvider getProviderOverride(
    covariant BookRatingPaginatedAtIndexProvider provider,
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
  String? get name => r'bookRatingPaginatedAtIndexProvider';
}

/// See also [bookRatingPaginatedAtIndex].
class BookRatingPaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<BookRatingModel>?> {
  /// See also [bookRatingPaginatedAtIndex].
  BookRatingPaginatedAtIndexProvider(
    int index, {
    required BookRatingListParam param,
  }) : this._internal(
          (ref) => bookRatingPaginatedAtIndex(
            ref as BookRatingPaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: bookRatingPaginatedAtIndexProvider,
          name: r'bookRatingPaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookRatingPaginatedAtIndexHash,
          dependencies: BookRatingPaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              BookRatingPaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  BookRatingPaginatedAtIndexProvider._internal(
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
  final BookRatingListParam param;

  @override
  Override overrideWith(
    PaginatedItem<BookRatingModel>? Function(
            BookRatingPaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookRatingPaginatedAtIndexProvider._internal(
        (ref) => create(ref as BookRatingPaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<BookRatingModel>?> createElement() {
    return _BookRatingPaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookRatingPaginatedAtIndexProvider &&
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
mixin BookRatingPaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<BookRatingModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  BookRatingListParam get param;
}

class _BookRatingPaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<BookRatingModel>?>
    with BookRatingPaginatedAtIndexRef {
  _BookRatingPaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as BookRatingPaginatedAtIndexProvider).index;
  @override
  BookRatingListParam get param =>
      (origin as BookRatingPaginatedAtIndexProvider).param;
}

String _$bookRatingListPaginationHash() =>
    r'4ae7753f69078f062d68ec8c4e05b48198adaa64';

abstract class _$BookRatingListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<BookRatingModel>> {
  late final int page;
  late final BookRatingListParam param;

  FutureOr<IList<BookRatingModel>> build({
    required int page,
    required BookRatingListParam param,
  });
}

/// See also [BookRatingListPagination].
@ProviderFor(BookRatingListPagination)
const bookRatingListPaginationProvider = BookRatingListPaginationFamily();

/// See also [BookRatingListPagination].
class BookRatingListPaginationFamily
    extends Family<AsyncValue<IList<BookRatingModel>>> {
  /// See also [BookRatingListPagination].
  const BookRatingListPaginationFamily();

  /// See also [BookRatingListPagination].
  BookRatingListPaginationProvider call({
    required int page,
    required BookRatingListParam param,
  }) {
    return BookRatingListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  BookRatingListPaginationProvider getProviderOverride(
    covariant BookRatingListPaginationProvider provider,
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
  String? get name => r'bookRatingListPaginationProvider';
}

/// See also [BookRatingListPagination].
class BookRatingListPaginationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BookRatingListPagination,
        IList<BookRatingModel>> {
  /// See also [BookRatingListPagination].
  BookRatingListPaginationProvider({
    required int page,
    required BookRatingListParam param,
  }) : this._internal(
          () => BookRatingListPagination()
            ..page = page
            ..param = param,
          from: bookRatingListPaginationProvider,
          name: r'bookRatingListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookRatingListPaginationHash,
          dependencies: BookRatingListPaginationFamily._dependencies,
          allTransitiveDependencies:
              BookRatingListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  BookRatingListPaginationProvider._internal(
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
  final BookRatingListParam param;

  @override
  FutureOr<IList<BookRatingModel>> runNotifierBuild(
    covariant BookRatingListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(BookRatingListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookRatingListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BookRatingListPagination,
      IList<BookRatingModel>> createElement() {
    return _BookRatingListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookRatingListPaginationProvider &&
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
mixin BookRatingListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<BookRatingModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  BookRatingListParam get param;
}

class _BookRatingListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookRatingListPagination,
        IList<BookRatingModel>> with BookRatingListPaginationRef {
  _BookRatingListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as BookRatingListPaginationProvider).page;
  @override
  BookRatingListParam get param =>
      (origin as BookRatingListPaginationProvider).param;
}

String _$bookRatingPaginationStateHash() =>
    r'84fb073e2321d87d32cd9f042666dad7c23ddb3f';

abstract class _$BookRatingPaginationState extends BuildlessAutoDisposeNotifier<
    ({bool isLoading, int totalPages, int currentPage})> {
  late final BookRatingListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required BookRatingListParam param,
  });
}

/// See also [BookRatingPaginationState].
@ProviderFor(BookRatingPaginationState)
const bookRatingPaginationStateProvider = BookRatingPaginationStateFamily();

/// See also [BookRatingPaginationState].
class BookRatingPaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [BookRatingPaginationState].
  const BookRatingPaginationStateFamily();

  /// See also [BookRatingPaginationState].
  BookRatingPaginationStateProvider call({
    required BookRatingListParam param,
  }) {
    return BookRatingPaginationStateProvider(
      param: param,
    );
  }

  @override
  BookRatingPaginationStateProvider getProviderOverride(
    covariant BookRatingPaginationStateProvider provider,
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
  String? get name => r'bookRatingPaginationStateProvider';
}

/// See also [BookRatingPaginationState].
class BookRatingPaginationStateProvider extends AutoDisposeNotifierProviderImpl<
    BookRatingPaginationState,
    ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [BookRatingPaginationState].
  BookRatingPaginationStateProvider({
    required BookRatingListParam param,
  }) : this._internal(
          () => BookRatingPaginationState()..param = param,
          from: bookRatingPaginationStateProvider,
          name: r'bookRatingPaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookRatingPaginationStateHash,
          dependencies: BookRatingPaginationStateFamily._dependencies,
          allTransitiveDependencies:
              BookRatingPaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  BookRatingPaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final BookRatingListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant BookRatingPaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(BookRatingPaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookRatingPaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<BookRatingPaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _BookRatingPaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookRatingPaginationStateProvider && other.param == param;
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
mixin BookRatingPaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  BookRatingListParam get param;
}

class _BookRatingPaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<BookRatingPaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with BookRatingPaginationStateRef {
  _BookRatingPaginationStateProviderElement(super.provider);

  @override
  BookRatingListParam get param =>
      (origin as BookRatingPaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
