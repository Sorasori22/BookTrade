// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_rating_overall_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookRatingOverallHash() => r'642d3b116854905eff3faca41219f4b649576427';

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

/// See also [bookRatingOverall].
@ProviderFor(bookRatingOverall)
const bookRatingOverallProvider = BookRatingOverallFamily();

/// See also [bookRatingOverall].
class BookRatingOverallFamily
    extends Family<AsyncValue<BookRatingOverallModel>> {
  /// See also [bookRatingOverall].
  const BookRatingOverallFamily();

  /// See also [bookRatingOverall].
  BookRatingOverallProvider call(
    BookId bookId,
  ) {
    return BookRatingOverallProvider(
      bookId,
    );
  }

  @override
  BookRatingOverallProvider getProviderOverride(
    covariant BookRatingOverallProvider provider,
  ) {
    return call(
      provider.bookId,
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
  String? get name => r'bookRatingOverallProvider';
}

/// See also [bookRatingOverall].
class BookRatingOverallProvider
    extends AutoDisposeFutureProvider<BookRatingOverallModel> {
  /// See also [bookRatingOverall].
  BookRatingOverallProvider(
    BookId bookId,
  ) : this._internal(
          (ref) => bookRatingOverall(
            ref as BookRatingOverallRef,
            bookId,
          ),
          from: bookRatingOverallProvider,
          name: r'bookRatingOverallProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookRatingOverallHash,
          dependencies: BookRatingOverallFamily._dependencies,
          allTransitiveDependencies:
              BookRatingOverallFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  BookRatingOverallProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
  }) : super.internal();

  final BookId bookId;

  @override
  Override overrideWith(
    FutureOr<BookRatingOverallModel> Function(BookRatingOverallRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookRatingOverallProvider._internal(
        (ref) => create(ref as BookRatingOverallRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<BookRatingOverallModel> createElement() {
    return _BookRatingOverallProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookRatingOverallProvider && other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookRatingOverallRef
    on AutoDisposeFutureProviderRef<BookRatingOverallModel> {
  /// The parameter `bookId` of this provider.
  BookId get bookId;
}

class _BookRatingOverallProviderElement
    extends AutoDisposeFutureProviderElement<BookRatingOverallModel>
    with BookRatingOverallRef {
  _BookRatingOverallProviderElement(super.provider);

  @override
  BookId get bookId => (origin as BookRatingOverallProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
