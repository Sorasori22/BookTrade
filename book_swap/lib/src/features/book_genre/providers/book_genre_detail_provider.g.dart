// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_genre_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookGenreDetailHash() => r'78a276694c93dfde3968f437ad0f0ad605984fd8';

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

abstract class _$BookGenreDetail
    extends BuildlessAutoDisposeAsyncNotifier<BookGenreModel> {
  late final BookGenreId id;

  FutureOr<BookGenreModel> build(
    BookGenreId id,
  );
}

/// See also [BookGenreDetail].
@ProviderFor(BookGenreDetail)
const bookGenreDetailProvider = BookGenreDetailFamily();

/// See also [BookGenreDetail].
class BookGenreDetailFamily extends Family<AsyncValue<BookGenreModel>> {
  /// See also [BookGenreDetail].
  const BookGenreDetailFamily();

  /// See also [BookGenreDetail].
  BookGenreDetailProvider call(
    BookGenreId id,
  ) {
    return BookGenreDetailProvider(
      id,
    );
  }

  @override
  BookGenreDetailProvider getProviderOverride(
    covariant BookGenreDetailProvider provider,
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
  String? get name => r'bookGenreDetailProvider';
}

/// See also [BookGenreDetail].
class BookGenreDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BookGenreDetail, BookGenreModel> {
  /// See also [BookGenreDetail].
  BookGenreDetailProvider(
    BookGenreId id,
  ) : this._internal(
          () => BookGenreDetail()..id = id,
          from: bookGenreDetailProvider,
          name: r'bookGenreDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookGenreDetailHash,
          dependencies: BookGenreDetailFamily._dependencies,
          allTransitiveDependencies:
              BookGenreDetailFamily._allTransitiveDependencies,
          id: id,
        );

  BookGenreDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final BookGenreId id;

  @override
  FutureOr<BookGenreModel> runNotifierBuild(
    covariant BookGenreDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(BookGenreDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookGenreDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BookGenreDetail, BookGenreModel>
      createElement() {
    return _BookGenreDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookGenreDetailProvider && other.id == id;
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
mixin BookGenreDetailRef
    on AutoDisposeAsyncNotifierProviderRef<BookGenreModel> {
  /// The parameter `id` of this provider.
  BookGenreId get id;
}

class _BookGenreDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookGenreDetail,
        BookGenreModel> with BookGenreDetailRef {
  _BookGenreDetailProviderElement(super.provider);

  @override
  BookGenreId get id => (origin as BookGenreDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
