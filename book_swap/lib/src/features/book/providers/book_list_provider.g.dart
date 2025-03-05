// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookListHash() => r'0f64bdaeb388d82fd84718c491c35e1db6508d3d';

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

abstract class _$BookList
    extends BuildlessAutoDisposeAsyncNotifier<IList<BookModel>> {
  late final BookListParam param;

  FutureOr<IList<BookModel>> build(
    BookListParam param,
  );
}

/// See also [BookList].
@ProviderFor(BookList)
const bookListProvider = BookListFamily();

/// See also [BookList].
class BookListFamily extends Family<AsyncValue<IList<BookModel>>> {
  /// See also [BookList].
  const BookListFamily();

  /// See also [BookList].
  BookListProvider call(
    BookListParam param,
  ) {
    return BookListProvider(
      param,
    );
  }

  @override
  BookListProvider getProviderOverride(
    covariant BookListProvider provider,
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
  String? get name => r'bookListProvider';
}

/// See also [BookList].
class BookListProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BookList, IList<BookModel>> {
  /// See also [BookList].
  BookListProvider(
    BookListParam param,
  ) : this._internal(
          () => BookList()..param = param,
          from: bookListProvider,
          name: r'bookListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookListHash,
          dependencies: BookListFamily._dependencies,
          allTransitiveDependencies: BookListFamily._allTransitiveDependencies,
          param: param,
        );

  BookListProvider._internal(
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
  FutureOr<IList<BookModel>> runNotifierBuild(
    covariant BookList notifier,
  ) {
    return notifier.build(
      param,
    );
  }

  @override
  Override overrideWith(BookList Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookListProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BookList, IList<BookModel>>
      createElement() {
    return _BookListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookListProvider && other.param == param;
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
mixin BookListRef on AutoDisposeAsyncNotifierProviderRef<IList<BookModel>> {
  /// The parameter `param` of this provider.
  BookListParam get param;
}

class _BookListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookList, IList<BookModel>>
    with BookListRef {
  _BookListProviderElement(super.provider);

  @override
  BookListParam get param => (origin as BookListProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
