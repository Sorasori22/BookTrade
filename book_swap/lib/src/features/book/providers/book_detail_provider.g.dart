// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookDetailHash() => r'b526cb8fbee6ba225cf57b490e0349a8bb098599';

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

abstract class _$BookDetail
    extends BuildlessAutoDisposeAsyncNotifier<BookModel> {
  late final BookId id;

  FutureOr<BookModel> build(
    BookId id,
  );
}

/// See also [BookDetail].
@ProviderFor(BookDetail)
const bookDetailProvider = BookDetailFamily();

/// See also [BookDetail].
class BookDetailFamily extends Family<AsyncValue<BookModel>> {
  /// See also [BookDetail].
  const BookDetailFamily();

  /// See also [BookDetail].
  BookDetailProvider call(
    BookId id,
  ) {
    return BookDetailProvider(
      id,
    );
  }

  @override
  BookDetailProvider getProviderOverride(
    covariant BookDetailProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'bookDetailProvider';
}

/// See also [BookDetail].
class BookDetailProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BookDetail, BookModel> {
  /// See also [BookDetail].
  BookDetailProvider(
    BookId id,
  ) : this._internal(
          () => BookDetail()..id = id,
          from: bookDetailProvider,
          name: r'bookDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookDetailHash,
          dependencies: BookDetailFamily._dependencies,
          allTransitiveDependencies:
              BookDetailFamily._allTransitiveDependencies,
          id: id,
        );

  BookDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final BookId id;

  @override
  FutureOr<BookModel> runNotifierBuild(
    covariant BookDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(BookDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookDetailProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BookDetail, BookModel>
      createElement() {
    return _BookDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookDetailRef on AutoDisposeAsyncNotifierProviderRef<BookModel> {
  /// The parameter `id` of this provider.
  BookId get id;
}

class _BookDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookDetail, BookModel>
    with BookDetailRef {
  _BookDetailProviderElement(super.provider);

  @override
  BookId get id => (origin as BookDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
