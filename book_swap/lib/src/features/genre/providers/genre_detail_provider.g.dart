// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'genre_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$genreDetailHash() => r'ef869217e16292e3950b57942753affb1b678305';

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

abstract class _$GenreDetail
    extends BuildlessAutoDisposeAsyncNotifier<GenreModel> {
  late final GenreId id;

  FutureOr<GenreModel> build(
    GenreId id,
  );
}

/// See also [GenreDetail].
@ProviderFor(GenreDetail)
const genreDetailProvider = GenreDetailFamily();

/// See also [GenreDetail].
class GenreDetailFamily extends Family<AsyncValue<GenreModel>> {
  /// See also [GenreDetail].
  const GenreDetailFamily();

  /// See also [GenreDetail].
  GenreDetailProvider call(
    GenreId id,
  ) {
    return GenreDetailProvider(
      id,
    );
  }

  @override
  GenreDetailProvider getProviderOverride(
    covariant GenreDetailProvider provider,
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
  String? get name => r'genreDetailProvider';
}

/// See also [GenreDetail].
class GenreDetailProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GenreDetail, GenreModel> {
  /// See also [GenreDetail].
  GenreDetailProvider(
    GenreId id,
  ) : this._internal(
          () => GenreDetail()..id = id,
          from: genreDetailProvider,
          name: r'genreDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$genreDetailHash,
          dependencies: GenreDetailFamily._dependencies,
          allTransitiveDependencies:
              GenreDetailFamily._allTransitiveDependencies,
          id: id,
        );

  GenreDetailProvider._internal(
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
  FutureOr<GenreModel> runNotifierBuild(
    covariant GenreDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(GenreDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: GenreDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<GenreDetail, GenreModel>
      createElement() {
    return _GenreDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenreDetailProvider && other.id == id;
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
mixin GenreDetailRef on AutoDisposeAsyncNotifierProviderRef<GenreModel> {
  /// The parameter `id` of this provider.
  GenreId get id;
}

class _GenreDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GenreDetail, GenreModel>
    with GenreDetailRef {
  _GenreDetailProviderElement(super.provider);

  @override
  GenreId get id => (origin as GenreDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
