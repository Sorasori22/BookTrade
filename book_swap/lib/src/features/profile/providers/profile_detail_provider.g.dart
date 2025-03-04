// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'profile_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileDetailHash() => r'9d4c53ec8a596c152da34e33b057e7b5f0a235b9';

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
    extends BuildlessAutoDisposeAsyncNotifier<ProfileDetailModel> {
  late final ProfileId profileId;

  FutureOr<ProfileDetailModel> build(
    ProfileId profileId,
  );
}

/// See also [ProfileDetail].
@ProviderFor(ProfileDetail)
const profileDetailProvider = ProfileDetailFamily();

/// See also [ProfileDetail].
class ProfileDetailFamily extends Family<AsyncValue<ProfileDetailModel>> {
  /// See also [ProfileDetail].
  const ProfileDetailFamily();

  /// See also [ProfileDetail].
  ProfileDetailProvider call(
    ProfileId profileId,
  ) {
    return ProfileDetailProvider(
      profileId,
    );
  }

  @override
  ProfileDetailProvider getProviderOverride(
    covariant ProfileDetailProvider provider,
  ) {
    return call(
      provider.profileId,
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
class ProfileDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ProfileDetail, ProfileDetailModel> {
  /// See also [ProfileDetail].
  ProfileDetailProvider(
    ProfileId profileId,
  ) : this._internal(
          () => ProfileDetail()..profileId = profileId,
          from: profileDetailProvider,
          name: r'profileDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileDetailHash,
          dependencies: ProfileDetailFamily._dependencies,
          allTransitiveDependencies:
              ProfileDetailFamily._allTransitiveDependencies,
          profileId: profileId,
        );

  ProfileDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.profileId,
  }) : super.internal();

  final ProfileId profileId;

  @override
  FutureOr<ProfileDetailModel> runNotifierBuild(
    covariant ProfileDetail notifier,
  ) {
    return notifier.build(
      profileId,
    );
  }

  @override
  Override overrideWith(ProfileDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileDetailProvider._internal(
        () => create()..profileId = profileId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        profileId: profileId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProfileDetail, ProfileDetailModel>
      createElement() {
    return _ProfileDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileDetailProvider && other.profileId == profileId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, profileId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileDetailRef
    on AutoDisposeAsyncNotifierProviderRef<ProfileDetailModel> {
  /// The parameter `profileId` of this provider.
  ProfileId get profileId;
}

class _ProfileDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProfileDetail,
        ProfileDetailModel> with ProfileDetailRef {
  _ProfileDetailProviderElement(super.provider);

  @override
  ProfileId get profileId => (origin as ProfileDetailProvider).profileId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
