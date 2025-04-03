// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_increment_view_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookIncrementViewHash() => r'75d652c4a1205507a9d648bf74e6cee3e69f98e5';

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

abstract class _$BookIncrementView
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final BookId bookId;

  ProviderStatus<Unit> build(
    BookId bookId,
  );
}

/// See also [BookIncrementView].
@ProviderFor(BookIncrementView)
const bookIncrementViewProvider = BookIncrementViewFamily();

/// See also [BookIncrementView].
class BookIncrementViewFamily extends Family<ProviderStatus<Unit>> {
  /// See also [BookIncrementView].
  const BookIncrementViewFamily();

  /// See also [BookIncrementView].
  BookIncrementViewProvider call(
    BookId bookId,
  ) {
    return BookIncrementViewProvider(
      bookId,
    );
  }

  @override
  BookIncrementViewProvider getProviderOverride(
    covariant BookIncrementViewProvider provider,
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
  String? get name => r'bookIncrementViewProvider';
}

/// See also [BookIncrementView].
class BookIncrementViewProvider extends AutoDisposeNotifierProviderImpl<
    BookIncrementView, ProviderStatus<Unit>> {
  /// See also [BookIncrementView].
  BookIncrementViewProvider(
    BookId bookId,
  ) : this._internal(
          () => BookIncrementView()..bookId = bookId,
          from: bookIncrementViewProvider,
          name: r'bookIncrementViewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookIncrementViewHash,
          dependencies: BookIncrementViewFamily._dependencies,
          allTransitiveDependencies:
              BookIncrementViewFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  BookIncrementViewProvider._internal(
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
  ProviderStatus<Unit> runNotifierBuild(
    covariant BookIncrementView notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(BookIncrementView Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookIncrementViewProvider._internal(
        () => create()..bookId = bookId,
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
  AutoDisposeNotifierProviderElement<BookIncrementView, ProviderStatus<Unit>>
      createElement() {
    return _BookIncrementViewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookIncrementViewProvider && other.bookId == bookId;
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
mixin BookIncrementViewRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `bookId` of this provider.
  BookId get bookId;
}

class _BookIncrementViewProviderElement
    extends AutoDisposeNotifierProviderElement<BookIncrementView,
        ProviderStatus<Unit>> with BookIncrementViewRef {
  _BookIncrementViewProviderElement(super.provider);

  @override
  BookId get bookId => (origin as BookIncrementViewProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
