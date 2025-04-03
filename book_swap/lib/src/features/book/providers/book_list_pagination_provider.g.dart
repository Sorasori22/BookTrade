// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookPaginatedAtIndexHash() =>
    r'1034048383a86c1ec43dfaa3ecfcf28204f40d89';

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

/// See also [bookPaginatedAtIndex].
@ProviderFor(bookPaginatedAtIndex)
const bookPaginatedAtIndexProvider = BookPaginatedAtIndexFamily();

/// See also [bookPaginatedAtIndex].
class BookPaginatedAtIndexFamily extends Family<PaginatedItem<BookModel>?> {
  /// See also [bookPaginatedAtIndex].
  const BookPaginatedAtIndexFamily();

  /// See also [bookPaginatedAtIndex].
  BookPaginatedAtIndexProvider call(
    int index, {
    required BookListParam param,
  }) {
    return BookPaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  BookPaginatedAtIndexProvider getProviderOverride(
    covariant BookPaginatedAtIndexProvider provider,
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
  String? get name => r'bookPaginatedAtIndexProvider';
}

/// See also [bookPaginatedAtIndex].
class BookPaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<BookModel>?> {
  /// See also [bookPaginatedAtIndex].
  BookPaginatedAtIndexProvider(
    int index, {
    required BookListParam param,
  }) : this._internal(
          (ref) => bookPaginatedAtIndex(
            ref as BookPaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: bookPaginatedAtIndexProvider,
          name: r'bookPaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookPaginatedAtIndexHash,
          dependencies: BookPaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              BookPaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  BookPaginatedAtIndexProvider._internal(
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
  final BookListParam param;

  @override
  Override overrideWith(
    PaginatedItem<BookModel>? Function(BookPaginatedAtIndexRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookPaginatedAtIndexProvider._internal(
        (ref) => create(ref as BookPaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<BookModel>?> createElement() {
    return _BookPaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookPaginatedAtIndexProvider &&
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
mixin BookPaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<BookModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  BookListParam get param;
}

class _BookPaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<BookModel>?>
    with BookPaginatedAtIndexRef {
  _BookPaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as BookPaginatedAtIndexProvider).index;
  @override
  BookListParam get param => (origin as BookPaginatedAtIndexProvider).param;
}

String _$bookListPaginationHash() =>
    r'7ee4719bc9ab6319b0c96939480ee417fd70fb1d';

abstract class _$BookListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<BookModel>> {
  late final int page;
  late final BookListParam param;

  FutureOr<IList<BookModel>> build({
    required int page,
    required BookListParam param,
  });
}

/// See also [BookListPagination].
@ProviderFor(BookListPagination)
const bookListPaginationProvider = BookListPaginationFamily();

/// See also [BookListPagination].
class BookListPaginationFamily extends Family<AsyncValue<IList<BookModel>>> {
  /// See also [BookListPagination].
  const BookListPaginationFamily();

  /// See also [BookListPagination].
  BookListPaginationProvider call({
    required int page,
    required BookListParam param,
  }) {
    return BookListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  BookListPaginationProvider getProviderOverride(
    covariant BookListPaginationProvider provider,
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
  String? get name => r'bookListPaginationProvider';
}

/// See also [BookListPagination].
class BookListPaginationProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BookListPagination, IList<BookModel>> {
  /// See also [BookListPagination].
  BookListPaginationProvider({
    required int page,
    required BookListParam param,
  }) : this._internal(
          () => BookListPagination()
            ..page = page
            ..param = param,
          from: bookListPaginationProvider,
          name: r'bookListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookListPaginationHash,
          dependencies: BookListPaginationFamily._dependencies,
          allTransitiveDependencies:
              BookListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  BookListPaginationProvider._internal(
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
  final BookListParam param;

  @override
  FutureOr<IList<BookModel>> runNotifierBuild(
    covariant BookListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(BookListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BookListPagination, IList<BookModel>>
      createElement() {
    return _BookListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookListPaginationProvider &&
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
mixin BookListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<BookModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  BookListParam get param;
}

class _BookListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookListPagination,
        IList<BookModel>> with BookListPaginationRef {
  _BookListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as BookListPaginationProvider).page;
  @override
  BookListParam get param => (origin as BookListPaginationProvider).param;
}

String _$bookPaginationStateHash() =>
    r'044411e2c0ab2b92d992081cb2a860550f621633';

abstract class _$BookPaginationState extends BuildlessAutoDisposeNotifier<
    ({bool isLoading, int totalPages, int currentPage})> {
  late final BookListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required BookListParam param,
  });
}

/// See also [BookPaginationState].
@ProviderFor(BookPaginationState)
const bookPaginationStateProvider = BookPaginationStateFamily();

/// See also [BookPaginationState].
class BookPaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [BookPaginationState].
  const BookPaginationStateFamily();

  /// See also [BookPaginationState].
  BookPaginationStateProvider call({
    required BookListParam param,
  }) {
    return BookPaginationStateProvider(
      param: param,
    );
  }

  @override
  BookPaginationStateProvider getProviderOverride(
    covariant BookPaginationStateProvider provider,
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
  String? get name => r'bookPaginationStateProvider';
}

/// See also [BookPaginationState].
class BookPaginationStateProvider extends AutoDisposeNotifierProviderImpl<
    BookPaginationState, ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [BookPaginationState].
  BookPaginationStateProvider({
    required BookListParam param,
  }) : this._internal(
          () => BookPaginationState()..param = param,
          from: bookPaginationStateProvider,
          name: r'bookPaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookPaginationStateHash,
          dependencies: BookPaginationStateFamily._dependencies,
          allTransitiveDependencies:
              BookPaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  BookPaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final BookListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant BookPaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(BookPaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookPaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<BookPaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _BookPaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookPaginationStateProvider && other.param == param;
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
mixin BookPaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  BookListParam get param;
}

class _BookPaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<BookPaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with BookPaginationStateRef {
  _BookPaginationStateProviderElement(super.provider);

  @override
  BookListParam get param => (origin as BookPaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
