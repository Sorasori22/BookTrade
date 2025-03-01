// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userDeleteHash() => r'757cac90d57755ce59de2921d9bca1ec66645d38';

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

abstract class _$UserDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final UserId id;

  ProviderStatus<Unit> build(
    UserId id,
  );
}

/// See also [UserDelete].
@ProviderFor(UserDelete)
const userDeleteProvider = UserDeleteFamily();

/// See also [UserDelete].
class UserDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [UserDelete].
  const UserDeleteFamily();

  /// See also [UserDelete].
  UserDeleteProvider call(
    UserId id,
  ) {
    return UserDeleteProvider(
      id,
    );
  }

  @override
  UserDeleteProvider getProviderOverride(
    covariant UserDeleteProvider provider,
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
  String? get name => r'userDeleteProvider';
}

/// See also [UserDelete].
class UserDeleteProvider
    extends AutoDisposeNotifierProviderImpl<UserDelete, ProviderStatus<Unit>> {
  /// See also [UserDelete].
  UserDeleteProvider(
    UserId id,
  ) : this._internal(
          () => UserDelete()..id = id,
          from: userDeleteProvider,
          name: r'userDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userDeleteHash,
          dependencies: UserDeleteFamily._dependencies,
          allTransitiveDependencies:
              UserDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  UserDeleteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final UserId id;

  @override
  ProviderStatus<Unit> runNotifierBuild(
    covariant UserDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(UserDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<UserDelete, ProviderStatus<Unit>>
      createElement() {
    return _UserDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDeleteProvider && other.id == id;
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
mixin UserDeleteRef on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  UserId get id;
}

class _UserDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<UserDelete, ProviderStatus<Unit>>
    with UserDeleteRef {
  _UserDeleteProviderElement(super.provider);

  @override
  UserId get id => (origin as UserDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
