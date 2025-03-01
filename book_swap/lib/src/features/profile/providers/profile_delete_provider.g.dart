// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'profile_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileDeleteHash() => r'463f07d6ffe6e41220d6353a963b37405ff8ed2c';

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

abstract class _$ProfileDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final ProfileId id;

  ProviderStatus<Unit> build(
    ProfileId id,
  );
}

/// See also [ProfileDelete].
@ProviderFor(ProfileDelete)
const profileDeleteProvider = ProfileDeleteFamily();

/// See also [ProfileDelete].
class ProfileDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [ProfileDelete].
  const ProfileDeleteFamily();

  /// See also [ProfileDelete].
  ProfileDeleteProvider call(
    ProfileId id,
  ) {
    return ProfileDeleteProvider(
      id,
    );
  }

  @override
  ProfileDeleteProvider getProviderOverride(
    covariant ProfileDeleteProvider provider,
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
  String? get name => r'profileDeleteProvider';
}

/// See also [ProfileDelete].
class ProfileDeleteProvider extends AutoDisposeNotifierProviderImpl<
    ProfileDelete, ProviderStatus<Unit>> {
  /// See also [ProfileDelete].
  ProfileDeleteProvider(
    ProfileId id,
  ) : this._internal(
          () => ProfileDelete()..id = id,
          from: profileDeleteProvider,
          name: r'profileDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileDeleteHash,
          dependencies: ProfileDeleteFamily._dependencies,
          allTransitiveDependencies:
              ProfileDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  ProfileDeleteProvider._internal(
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
  ProviderStatus<Unit> runNotifierBuild(
    covariant ProfileDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(ProfileDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<ProfileDelete, ProviderStatus<Unit>>
      createElement() {
    return _ProfileDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileDeleteProvider && other.id == id;
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
mixin ProfileDeleteRef on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  ProfileId get id;
}

class _ProfileDeleteProviderElement extends AutoDisposeNotifierProviderElement<
    ProfileDelete, ProviderStatus<Unit>> with ProfileDeleteRef {
  _ProfileDeleteProviderElement(super.provider);

  @override
  ProfileId get id => (origin as ProfileDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
