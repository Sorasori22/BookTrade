// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_rating_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRatingListHash() => r'3a892ba282e3089d7c367d91e685a29844817176';

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

abstract class _$UserRatingList
    extends BuildlessAutoDisposeAsyncNotifier<IList<UserRatingModel>> {
  late final UserRatingListParam param;

  FutureOr<IList<UserRatingModel>> build(
    UserRatingListParam param,
  );
}

/// See also [UserRatingList].
@ProviderFor(UserRatingList)
const userRatingListProvider = UserRatingListFamily();

/// See also [UserRatingList].
class UserRatingListFamily extends Family<AsyncValue<IList<UserRatingModel>>> {
  /// See also [UserRatingList].
  const UserRatingListFamily();

  /// See also [UserRatingList].
  UserRatingListProvider call(
    UserRatingListParam param,
  ) {
    return UserRatingListProvider(
      param,
    );
  }

  @override
  UserRatingListProvider getProviderOverride(
    covariant UserRatingListProvider provider,
  ) {
    return call(
      provider.param,
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
  String? get name => r'userRatingListProvider';
}

/// See also [UserRatingList].
class UserRatingListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    UserRatingList, IList<UserRatingModel>> {
  /// See also [UserRatingList].
  UserRatingListProvider(
    UserRatingListParam param,
  ) : this._internal(
          () => UserRatingList()..param = param,
          from: userRatingListProvider,
          name: r'userRatingListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userRatingListHash,
          dependencies: UserRatingListFamily._dependencies,
          allTransitiveDependencies:
              UserRatingListFamily._allTransitiveDependencies,
          param: param,
        );

  UserRatingListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final UserRatingListParam param;

  @override
  FutureOr<IList<UserRatingModel>> runNotifierBuild(
    covariant UserRatingList notifier,
  ) {
    return notifier.build(
      param,
    );
  }

  @override
  Override overrideWith(UserRatingList Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserRatingListProvider._internal(
        () => create()..param = param,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        param: param,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UserRatingList,
      IList<UserRatingModel>> createElement() {
    return _UserRatingListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserRatingListProvider && other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserRatingListRef
    on AutoDisposeAsyncNotifierProviderRef<IList<UserRatingModel>> {
  /// The parameter `param` of this provider.
  UserRatingListParam get param;
}

class _UserRatingListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserRatingList,
        IList<UserRatingModel>> with UserRatingListRef {
  _UserRatingListProviderElement(super.provider);

  @override
  UserRatingListParam get param => (origin as UserRatingListProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
