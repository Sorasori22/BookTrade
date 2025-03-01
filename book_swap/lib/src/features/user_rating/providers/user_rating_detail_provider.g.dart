// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_rating_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRatingDetailHash() => r'960e61d973b7937671350f5548bd777d02ce0d25';

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

abstract class _$UserRatingDetail
    extends BuildlessAutoDisposeAsyncNotifier<UserRatingModel> {
  late final UserRatingId id;

  FutureOr<UserRatingModel> build(
    UserRatingId id,
  );
}

/// See also [UserRatingDetail].
@ProviderFor(UserRatingDetail)
const userRatingDetailProvider = UserRatingDetailFamily();

/// See also [UserRatingDetail].
class UserRatingDetailFamily extends Family<AsyncValue<UserRatingModel>> {
  /// See also [UserRatingDetail].
  const UserRatingDetailFamily();

  /// See also [UserRatingDetail].
  UserRatingDetailProvider call(
    UserRatingId id,
  ) {
    return UserRatingDetailProvider(
      id,
    );
  }

  @override
  UserRatingDetailProvider getProviderOverride(
    covariant UserRatingDetailProvider provider,
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
  String? get name => r'userRatingDetailProvider';
}

/// See also [UserRatingDetail].
class UserRatingDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    UserRatingDetail, UserRatingModel> {
  /// See also [UserRatingDetail].
  UserRatingDetailProvider(
    UserRatingId id,
  ) : this._internal(
          () => UserRatingDetail()..id = id,
          from: userRatingDetailProvider,
          name: r'userRatingDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userRatingDetailHash,
          dependencies: UserRatingDetailFamily._dependencies,
          allTransitiveDependencies:
              UserRatingDetailFamily._allTransitiveDependencies,
          id: id,
        );

  UserRatingDetailProvider._internal(
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
  FutureOr<UserRatingModel> runNotifierBuild(
    covariant UserRatingDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(UserRatingDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserRatingDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<UserRatingDetail, UserRatingModel>
      createElement() {
    return _UserRatingDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserRatingDetailProvider && other.id == id;
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
mixin UserRatingDetailRef
    on AutoDisposeAsyncNotifierProviderRef<UserRatingModel> {
  /// The parameter `id` of this provider.
  UserRatingId get id;
}

class _UserRatingDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserRatingDetail,
        UserRatingModel> with UserRatingDetailRef {
  _UserRatingDetailProviderElement(super.provider);

  @override
  UserRatingId get id => (origin as UserRatingDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
