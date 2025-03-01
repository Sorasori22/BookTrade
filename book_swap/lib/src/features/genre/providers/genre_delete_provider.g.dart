// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'genre_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$genreDeleteHash() => r'3e3e3a2e331da60ea5d06ca780a4c7e22ca27776';

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

abstract class _$GenreDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final GenreId id;

  ProviderStatus<Unit> build(
    GenreId id,
  );
}

/// See also [GenreDelete].
@ProviderFor(GenreDelete)
const genreDeleteProvider = GenreDeleteFamily();

/// See also [GenreDelete].
class GenreDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [GenreDelete].
  const GenreDeleteFamily();

  /// See also [GenreDelete].
  GenreDeleteProvider call(
    GenreId id,
  ) {
    return GenreDeleteProvider(
      id,
    );
  }

  @override
  GenreDeleteProvider getProviderOverride(
    covariant GenreDeleteProvider provider,
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
  String? get name => r'genreDeleteProvider';
}

/// See also [GenreDelete].
class GenreDeleteProvider
    extends AutoDisposeNotifierProviderImpl<GenreDelete, ProviderStatus<Unit>> {
  /// See also [GenreDelete].
  GenreDeleteProvider(
    GenreId id,
  ) : this._internal(
          () => GenreDelete()..id = id,
          from: genreDeleteProvider,
          name: r'genreDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$genreDeleteHash,
          dependencies: GenreDeleteFamily._dependencies,
          allTransitiveDependencies:
              GenreDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  GenreDeleteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final GenreId id;

  @override
  ProviderStatus<Unit> runNotifierBuild(
    covariant GenreDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(GenreDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: GenreDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<GenreDelete, ProviderStatus<Unit>>
      createElement() {
    return _GenreDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenreDeleteProvider && other.id == id;
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
mixin GenreDeleteRef on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  GenreId get id;
}

class _GenreDeleteProviderElement extends AutoDisposeNotifierProviderElement<
    GenreDelete, ProviderStatus<Unit>> with GenreDeleteRef {
  _GenreDeleteProviderElement(super.provider);

  @override
  GenreId get id => (origin as GenreDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
