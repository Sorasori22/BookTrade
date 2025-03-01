// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_genre_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookGenrePaginatedAtIndexHash() =>
    r'bc778835916060bf6095ca1d68e3c34c03d16c89';

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

/// See also [bookGenrePaginatedAtIndex].
@ProviderFor(bookGenrePaginatedAtIndex)
const bookGenrePaginatedAtIndexProvider = BookGenrePaginatedAtIndexFamily();

/// See also [bookGenrePaginatedAtIndex].
class BookGenrePaginatedAtIndexFamily
    extends Family<PaginatedItem<BookGenreModel>?> {
  /// See also [bookGenrePaginatedAtIndex].
  const BookGenrePaginatedAtIndexFamily();

  /// See also [bookGenrePaginatedAtIndex].
  BookGenrePaginatedAtIndexProvider call(
    int index, {
    required BookGenreListParam param,
  }) {
    return BookGenrePaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  BookGenrePaginatedAtIndexProvider getProviderOverride(
    covariant BookGenrePaginatedAtIndexProvider provider,
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
  String? get name => r'bookGenrePaginatedAtIndexProvider';
}

/// See also [bookGenrePaginatedAtIndex].
class BookGenrePaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<BookGenreModel>?> {
  /// See also [bookGenrePaginatedAtIndex].
  BookGenrePaginatedAtIndexProvider(
    int index, {
    required BookGenreListParam param,
  }) : this._internal(
          (ref) => bookGenrePaginatedAtIndex(
            ref as BookGenrePaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: bookGenrePaginatedAtIndexProvider,
          name: r'bookGenrePaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookGenrePaginatedAtIndexHash,
          dependencies: BookGenrePaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              BookGenrePaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  BookGenrePaginatedAtIndexProvider._internal(
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
  final BookGenreListParam param;

  @override
  Override overrideWith(
    PaginatedItem<BookGenreModel>? Function(
            BookGenrePaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookGenrePaginatedAtIndexProvider._internal(
        (ref) => create(ref as BookGenrePaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<BookGenreModel>?> createElement() {
    return _BookGenrePaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookGenrePaginatedAtIndexProvider &&
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
mixin BookGenrePaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<BookGenreModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  BookGenreListParam get param;
}

class _BookGenrePaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<BookGenreModel>?>
    with BookGenrePaginatedAtIndexRef {
  _BookGenrePaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as BookGenrePaginatedAtIndexProvider).index;
  @override
  BookGenreListParam get param =>
      (origin as BookGenrePaginatedAtIndexProvider).param;
}

String _$bookGenreListPaginationHash() =>
    r'986f8c5ef7548cbc0e6e3ab5a3ec8bbe3d342ddb';

abstract class _$BookGenreListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<BookGenreModel>> {
  late final int page;
  late final BookGenreListParam param;

  FutureOr<IList<BookGenreModel>> build({
    required int page,
    required BookGenreListParam param,
  });
}

/// See also [BookGenreListPagination].
@ProviderFor(BookGenreListPagination)
const bookGenreListPaginationProvider = BookGenreListPaginationFamily();

/// See also [BookGenreListPagination].
class BookGenreListPaginationFamily
    extends Family<AsyncValue<IList<BookGenreModel>>> {
  /// See also [BookGenreListPagination].
  const BookGenreListPaginationFamily();

  /// See also [BookGenreListPagination].
  BookGenreListPaginationProvider call({
    required int page,
    required BookGenreListParam param,
  }) {
    return BookGenreListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  BookGenreListPaginationProvider getProviderOverride(
    covariant BookGenreListPaginationProvider provider,
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
  String? get name => r'bookGenreListPaginationProvider';
}

/// See also [BookGenreListPagination].
class BookGenreListPaginationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BookGenreListPagination,
        IList<BookGenreModel>> {
  /// See also [BookGenreListPagination].
  BookGenreListPaginationProvider({
    required int page,
    required BookGenreListParam param,
  }) : this._internal(
          () => BookGenreListPagination()
            ..page = page
            ..param = param,
          from: bookGenreListPaginationProvider,
          name: r'bookGenreListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookGenreListPaginationHash,
          dependencies: BookGenreListPaginationFamily._dependencies,
          allTransitiveDependencies:
              BookGenreListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  BookGenreListPaginationProvider._internal(
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
  final BookGenreListParam param;

  @override
  FutureOr<IList<BookGenreModel>> runNotifierBuild(
    covariant BookGenreListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(BookGenreListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookGenreListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BookGenreListPagination,
      IList<BookGenreModel>> createElement() {
    return _BookGenreListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookGenreListPaginationProvider &&
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
mixin BookGenreListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<BookGenreModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  BookGenreListParam get param;
}

class _BookGenreListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookGenreListPagination,
        IList<BookGenreModel>> with BookGenreListPaginationRef {
  _BookGenreListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as BookGenreListPaginationProvider).page;
  @override
  BookGenreListParam get param =>
      (origin as BookGenreListPaginationProvider).param;
}

String _$bookGenrePaginationStateHash() =>
    r'5c8d91b93ab01c62509cf26cc6338d4d6d716bde';

abstract class _$BookGenrePaginationState extends BuildlessAutoDisposeNotifier<
    ({bool isLoading, int totalPages, int currentPage})> {
  late final BookGenreListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required BookGenreListParam param,
  });
}

/// See also [BookGenrePaginationState].
@ProviderFor(BookGenrePaginationState)
const bookGenrePaginationStateProvider = BookGenrePaginationStateFamily();

/// See also [BookGenrePaginationState].
class BookGenrePaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [BookGenrePaginationState].
  const BookGenrePaginationStateFamily();

  /// See also [BookGenrePaginationState].
  BookGenrePaginationStateProvider call({
    required BookGenreListParam param,
  }) {
    return BookGenrePaginationStateProvider(
      param: param,
    );
  }

  @override
  BookGenrePaginationStateProvider getProviderOverride(
    covariant BookGenrePaginationStateProvider provider,
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
  String? get name => r'bookGenrePaginationStateProvider';
}

/// See also [BookGenrePaginationState].
class BookGenrePaginationStateProvider extends AutoDisposeNotifierProviderImpl<
    BookGenrePaginationState,
    ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [BookGenrePaginationState].
  BookGenrePaginationStateProvider({
    required BookGenreListParam param,
  }) : this._internal(
          () => BookGenrePaginationState()..param = param,
          from: bookGenrePaginationStateProvider,
          name: r'bookGenrePaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookGenrePaginationStateHash,
          dependencies: BookGenrePaginationStateFamily._dependencies,
          allTransitiveDependencies:
              BookGenrePaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  BookGenrePaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final BookGenreListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant BookGenrePaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(BookGenrePaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookGenrePaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<BookGenrePaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _BookGenrePaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookGenrePaginationStateProvider && other.param == param;
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
mixin BookGenrePaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  BookGenreListParam get param;
}

class _BookGenrePaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<BookGenrePaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with BookGenrePaginationStateRef {
  _BookGenrePaginationStateProviderElement(super.provider);

  @override
  BookGenreListParam get param =>
      (origin as BookGenrePaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
