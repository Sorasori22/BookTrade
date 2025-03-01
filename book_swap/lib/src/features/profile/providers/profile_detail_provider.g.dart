// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'profile_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileDetailHash() => r'b1668226456eaa87b78fc7e1a3b4e5700d74d9b4';

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

abstract class _$ProfileDetail
    extends BuildlessAutoDisposeAsyncNotifier<ProfileModel> {
  late final ProfileId id;

  FutureOr<ProfileModel> build(
    ProfileId id,
  );
}

/// See also [ProfileDetail].
@ProviderFor(ProfileDetail)
const profileDetailProvider = ProfileDetailFamily();

/// See also [ProfileDetail].
class ProfileDetailFamily extends Family<AsyncValue<ProfileModel>> {
  /// See also [ProfileDetail].
  const ProfileDetailFamily();

  /// See also [ProfileDetail].
  ProfileDetailProvider call(
    ProfileId id,
  ) {
    return ProfileDetailProvider(
      id,
    );
  }

  @override
  ProfileDetailProvider getProviderOverride(
    covariant ProfileDetailProvider provider,
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
  String? get name => r'profileDetailProvider';
}

/// See also [ProfileDetail].
class ProfileDetailProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProfileDetail, ProfileModel> {
  /// See also [ProfileDetail].
  ProfileDetailProvider(
    ProfileId id,
  ) : this._internal(
          () => ProfileDetail()..id = id,
          from: profileDetailProvider,
          name: r'profileDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileDetailHash,
          dependencies: ProfileDetailFamily._dependencies,
          allTransitiveDependencies:
              ProfileDetailFamily._allTransitiveDependencies,
          id: id,
        );

  ProfileDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final ProfileId id;

  @override
  FutureOr<ProfileModel> runNotifierBuild(
    covariant ProfileDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(ProfileDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ProfileDetail, ProfileModel>
      createElement() {
    return _ProfileDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileDetailProvider && other.id == id;
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
mixin ProfileDetailRef on AutoDisposeAsyncNotifierProviderRef<ProfileModel> {
  /// The parameter `id` of this provider.
  ProfileId get id;
}

class _ProfileDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProfileDetail, ProfileModel>
    with ProfileDetailRef {
  _ProfileDetailProviderElement(super.provider);

  @override
  ProfileId get id => (origin as ProfileDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
