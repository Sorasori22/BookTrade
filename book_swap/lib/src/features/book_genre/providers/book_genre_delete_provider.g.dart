// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_genre_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookGenreDeleteHash() => r'b683b18879ccbbf14833bec13c406ed9770801fe';

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

abstract class _$BookGenreDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final BookGenreId id;

  ProviderStatus<Unit> build(
    BookGenreId id,
  );
}

/// See also [BookGenreDelete].
@ProviderFor(BookGenreDelete)
const bookGenreDeleteProvider = BookGenreDeleteFamily();

/// See also [BookGenreDelete].
class BookGenreDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [BookGenreDelete].
  const BookGenreDeleteFamily();

  /// See also [BookGenreDelete].
  BookGenreDeleteProvider call(
    BookGenreId id,
  ) {
    return BookGenreDeleteProvider(
      id,
    );
  }

  @override
  BookGenreDeleteProvider getProviderOverride(
    covariant BookGenreDeleteProvider provider,
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
  String? get name => r'bookGenreDeleteProvider';
}

/// See also [BookGenreDelete].
class BookGenreDeleteProvider extends AutoDisposeNotifierProviderImpl<
    BookGenreDelete, ProviderStatus<Unit>> {
  /// See also [BookGenreDelete].
  BookGenreDeleteProvider(
    BookGenreId id,
  ) : this._internal(
          () => BookGenreDelete()..id = id,
          from: bookGenreDeleteProvider,
          name: r'bookGenreDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookGenreDeleteHash,
          dependencies: BookGenreDeleteFamily._dependencies,
          allTransitiveDependencies:
              BookGenreDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  BookGenreDeleteProvider._internal(
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
  ProviderStatus<Unit> runNotifierBuild(
    covariant BookGenreDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(BookGenreDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookGenreDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<BookGenreDelete, ProviderStatus<Unit>>
      createElement() {
    return _BookGenreDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookGenreDeleteProvider && other.id == id;
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
mixin BookGenreDeleteRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  BookGenreId get id;
}

class _BookGenreDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<BookGenreDelete,
        ProviderStatus<Unit>> with BookGenreDeleteRef {
  _BookGenreDeleteProviderElement(super.provider);

  @override
  BookGenreId get id => (origin as BookGenreDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
