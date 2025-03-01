// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_rating_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookRatingDetailHash() => r'e931181210d834051689481cd4afc7c82f779b08';

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

abstract class _$BookRatingDetail
    extends BuildlessAutoDisposeAsyncNotifier<BookRatingModel> {
  late final BookRatingId id;

  FutureOr<BookRatingModel> build(
    BookRatingId id,
  );
}

/// See also [BookRatingDetail].
@ProviderFor(BookRatingDetail)
const bookRatingDetailProvider = BookRatingDetailFamily();

/// See also [BookRatingDetail].
class BookRatingDetailFamily extends Family<AsyncValue<BookRatingModel>> {
  /// See also [BookRatingDetail].
  const BookRatingDetailFamily();

  /// See also [BookRatingDetail].
  BookRatingDetailProvider call(
    BookRatingId id,
  ) {
    return BookRatingDetailProvider(
      id,
    );
  }

  @override
  BookRatingDetailProvider getProviderOverride(
    covariant BookRatingDetailProvider provider,
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
  String? get name => r'bookRatingDetailProvider';
}

/// See also [BookRatingDetail].
class BookRatingDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BookRatingDetail, BookRatingModel> {
  /// See also [BookRatingDetail].
  BookRatingDetailProvider(
    BookRatingId id,
  ) : this._internal(
          () => BookRatingDetail()..id = id,
          from: bookRatingDetailProvider,
          name: r'bookRatingDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookRatingDetailHash,
          dependencies: BookRatingDetailFamily._dependencies,
          allTransitiveDependencies:
              BookRatingDetailFamily._allTransitiveDependencies,
          id: id,
        );

  BookRatingDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final BookRatingId id;

  @override
  FutureOr<BookRatingModel> runNotifierBuild(
    covariant BookRatingDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(BookRatingDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookRatingDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BookRatingDetail, BookRatingModel>
      createElement() {
    return _BookRatingDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookRatingDetailProvider && other.id == id;
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
mixin BookRatingDetailRef
    on AutoDisposeAsyncNotifierProviderRef<BookRatingModel> {
  /// The parameter `id` of this provider.
  BookRatingId get id;
}

class _BookRatingDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookRatingDetail,
        BookRatingModel> with BookRatingDetailRef {
  _BookRatingDetailProviderElement(super.provider);

  @override
  BookRatingId get id => (origin as BookRatingDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
