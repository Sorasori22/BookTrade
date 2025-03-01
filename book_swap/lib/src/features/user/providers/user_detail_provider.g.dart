// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userDetailHash() => r'68bc7a78af833dc643374e836c1e1473f88aa9ef';

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

abstract class _$UserDetail
    extends BuildlessAutoDisposeAsyncNotifier<UserModel> {
  late final UserId id;

  FutureOr<UserModel> build(
    UserId id,
  );
}

/// See also [UserDetail].
@ProviderFor(UserDetail)
const userDetailProvider = UserDetailFamily();

/// See also [UserDetail].
class UserDetailFamily extends Family<AsyncValue<UserModel>> {
  /// See also [UserDetail].
  const UserDetailFamily();

  /// See also [UserDetail].
  UserDetailProvider call(
    UserId id,
  ) {
    return UserDetailProvider(
      id,
    );
  }

  @override
  UserDetailProvider getProviderOverride(
    covariant UserDetailProvider provider,
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
  String? get name => r'userDetailProvider';
}

/// See also [UserDetail].
class UserDetailProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserDetail, UserModel> {
  /// See also [UserDetail].
  UserDetailProvider(
    UserId id,
  ) : this._internal(
          () => UserDetail()..id = id,
          from: userDetailProvider,
          name: r'userDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userDetailHash,
          dependencies: UserDetailFamily._dependencies,
          allTransitiveDependencies:
              UserDetailFamily._allTransitiveDependencies,
          id: id,
        );

  UserDetailProvider._internal(
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
  FutureOr<UserModel> runNotifierBuild(
    covariant UserDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(UserDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<UserDetail, UserModel>
      createElement() {
    return _UserDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDetailProvider && other.id == id;
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
mixin UserDetailRef on AutoDisposeAsyncNotifierProviderRef<UserModel> {
  /// The parameter `id` of this provider.
  UserId get id;
}

class _UserDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserDetail, UserModel>
    with UserDetailRef {
  _UserDetailProviderElement(super.provider);

  @override
  UserId get id => (origin as UserDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
