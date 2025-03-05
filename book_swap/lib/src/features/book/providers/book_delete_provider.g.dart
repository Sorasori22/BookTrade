// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookDeleteHash() => r'fe46d438628527b55b00365ed6ac88c67972398b';

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

abstract class _$BookDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final BookId id;

  ProviderStatus<Unit> build(
    BookId id,
  );
}

/// See also [BookDelete].
@ProviderFor(BookDelete)
const bookDeleteProvider = BookDeleteFamily();

/// See also [BookDelete].
class BookDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [BookDelete].
  const BookDeleteFamily();

  /// See also [BookDelete].
  BookDeleteProvider call(
    BookId id,
  ) {
    return BookDeleteProvider(
      id,
    );
  }

  @override
  BookDeleteProvider getProviderOverride(
    covariant BookDeleteProvider provider,
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
  String? get name => r'bookDeleteProvider';
}

/// See also [BookDelete].
class BookDeleteProvider
    extends AutoDisposeNotifierProviderImpl<BookDelete, ProviderStatus<Unit>> {
  /// See also [BookDelete].
  BookDeleteProvider(
    BookId id,
  ) : this._internal(
          () => BookDelete()..id = id,
          from: bookDeleteProvider,
          name: r'bookDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookDeleteHash,
          dependencies: BookDeleteFamily._dependencies,
          allTransitiveDependencies:
              BookDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  BookDeleteProvider._internal(
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
  ProviderStatus<Unit> runNotifierBuild(
    covariant BookDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(BookDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<BookDelete, ProviderStatus<Unit>>
      createElement() {
    return _BookDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookDeleteProvider && other.id == id;
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
mixin BookDeleteRef on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  BookId get id;
}

class _BookDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<BookDelete, ProviderStatus<Unit>>
    with BookDeleteRef {
  _BookDeleteProviderElement(super.provider);

  @override
  BookId get id => (origin as BookDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
