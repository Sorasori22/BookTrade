// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_rating_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRatingDeleteHash() => r'c9a0736d7245c6af2e0c4c0bb5e04e31bded58b0';

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

abstract class _$UserRatingDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final UserRatingId id;

  ProviderStatus<Unit> build(
    UserRatingId id,
  );
}

/// See also [UserRatingDelete].
@ProviderFor(UserRatingDelete)
const userRatingDeleteProvider = UserRatingDeleteFamily();

/// See also [UserRatingDelete].
class UserRatingDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [UserRatingDelete].
  const UserRatingDeleteFamily();

  /// See also [UserRatingDelete].
  UserRatingDeleteProvider call(
    UserRatingId id,
  ) {
    return UserRatingDeleteProvider(
      id,
    );
  }

  @override
  UserRatingDeleteProvider getProviderOverride(
    covariant UserRatingDeleteProvider provider,
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
  String? get name => r'userRatingDeleteProvider';
}

/// See also [UserRatingDelete].
class UserRatingDeleteProvider extends AutoDisposeNotifierProviderImpl<
    UserRatingDelete, ProviderStatus<Unit>> {
  /// See also [UserRatingDelete].
  UserRatingDeleteProvider(
    UserRatingId id,
  ) : this._internal(
          () => UserRatingDelete()..id = id,
          from: userRatingDeleteProvider,
          name: r'userRatingDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userRatingDeleteHash,
          dependencies: UserRatingDeleteFamily._dependencies,
          allTransitiveDependencies:
              UserRatingDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  UserRatingDeleteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final UserRatingId id;

  @override
  ProviderStatus<Unit> runNotifierBuild(
    covariant UserRatingDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(UserRatingDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserRatingDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<UserRatingDelete, ProviderStatus<Unit>>
      createElement() {
    return _UserRatingDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserRatingDeleteProvider && other.id == id;
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
mixin UserRatingDeleteRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  UserRatingId get id;
}

class _UserRatingDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<UserRatingDelete,
        ProviderStatus<Unit>> with UserRatingDeleteRef {
  _UserRatingDeleteProviderElement(super.provider);

  @override
  UserRatingId get id => (origin as UserRatingDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
