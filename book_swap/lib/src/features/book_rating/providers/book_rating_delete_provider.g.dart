// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_rating_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookRatingDeleteHash() => r'2ed5e89c3043dfc0c6b853c9daa087d05963899b';

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

abstract class _$BookRatingDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final BookRatingId id;

  ProviderStatus<Unit> build(
    BookRatingId id,
  );
}

/// See also [BookRatingDelete].
@ProviderFor(BookRatingDelete)
const bookRatingDeleteProvider = BookRatingDeleteFamily();

/// See also [BookRatingDelete].
class BookRatingDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [BookRatingDelete].
  const BookRatingDeleteFamily();

  /// See also [BookRatingDelete].
  BookRatingDeleteProvider call(
    BookRatingId id,
  ) {
    return BookRatingDeleteProvider(
      id,
    );
  }

  @override
  BookRatingDeleteProvider getProviderOverride(
    covariant BookRatingDeleteProvider provider,
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
  String? get name => r'bookRatingDeleteProvider';
}

/// See also [BookRatingDelete].
class BookRatingDeleteProvider extends AutoDisposeNotifierProviderImpl<
    BookRatingDelete, ProviderStatus<Unit>> {
  /// See also [BookRatingDelete].
  BookRatingDeleteProvider(
    BookRatingId id,
  ) : this._internal(
          () => BookRatingDelete()..id = id,
          from: bookRatingDeleteProvider,
          name: r'bookRatingDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookRatingDeleteHash,
          dependencies: BookRatingDeleteFamily._dependencies,
          allTransitiveDependencies:
              BookRatingDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  BookRatingDeleteProvider._internal(
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
  ProviderStatus<Unit> runNotifierBuild(
    covariant BookRatingDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(BookRatingDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookRatingDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<BookRatingDelete, ProviderStatus<Unit>>
      createElement() {
    return _BookRatingDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookRatingDeleteProvider && other.id == id;
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
mixin BookRatingDeleteRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  BookRatingId get id;
}

class _BookRatingDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<BookRatingDelete,
        ProviderStatus<Unit>> with BookRatingDeleteRef {
  _BookRatingDeleteProviderElement(super.provider);

  @override
  BookRatingId get id => (origin as BookRatingDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
