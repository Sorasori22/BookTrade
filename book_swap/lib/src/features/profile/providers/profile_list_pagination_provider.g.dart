// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'profile_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profilePaginatedAtIndexHash() =>
    r'7527d7d91dd265e0f22be12325232417715f2f62';

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

/// See also [profilePaginatedAtIndex].
@ProviderFor(profilePaginatedAtIndex)
const profilePaginatedAtIndexProvider = ProfilePaginatedAtIndexFamily();

/// See also [profilePaginatedAtIndex].
class ProfilePaginatedAtIndexFamily
    extends Family<PaginatedItem<ProfileModel>?> {
  /// See also [profilePaginatedAtIndex].
  const ProfilePaginatedAtIndexFamily();

  /// See also [profilePaginatedAtIndex].
  ProfilePaginatedAtIndexProvider call(
    int index, {
    required ProfileListParam param,
  }) {
    return ProfilePaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  ProfilePaginatedAtIndexProvider getProviderOverride(
    covariant ProfilePaginatedAtIndexProvider provider,
  ) {
    return call(
      provider.index,
      param: provider.param,
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
  String? get name => r'profilePaginatedAtIndexProvider';
}

/// See also [profilePaginatedAtIndex].
class ProfilePaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<ProfileModel>?> {
  /// See also [profilePaginatedAtIndex].
  ProfilePaginatedAtIndexProvider(
    int index, {
    required ProfileListParam param,
  }) : this._internal(
          (ref) => profilePaginatedAtIndex(
            ref as ProfilePaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: profilePaginatedAtIndexProvider,
          name: r'profilePaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profilePaginatedAtIndexHash,
          dependencies: ProfilePaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              ProfilePaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  ProfilePaginatedAtIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
    required this.param,
  }) : super.internal();

  final int index;
  final ProfileListParam param;

  @override
  Override overrideWith(
    PaginatedItem<ProfileModel>? Function(ProfilePaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProfilePaginatedAtIndexProvider._internal(
        (ref) => create(ref as ProfilePaginatedAtIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
        param: param,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<PaginatedItem<ProfileModel>?> createElement() {
    return _ProfilePaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfilePaginatedAtIndexProvider &&
        other.index == index &&
        other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfilePaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<ProfileModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  ProfileListParam get param;
}

class _ProfilePaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<ProfileModel>?>
    with ProfilePaginatedAtIndexRef {
  _ProfilePaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as ProfilePaginatedAtIndexProvider).index;
  @override
  ProfileListParam get param =>
      (origin as ProfilePaginatedAtIndexProvider).param;
}

String _$profileListPaginationHash() =>
    r'79b087a166591565a8b80f80bf2ab657cb4301b2';

abstract class _$ProfileListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<ProfileModel>> {
  late final int page;
  late final ProfileListParam param;

  FutureOr<IList<ProfileModel>> build({
    required int page,
    required ProfileListParam param,
  });
}

/// See also [ProfileListPagination].
@ProviderFor(ProfileListPagination)
const profileListPaginationProvider = ProfileListPaginationFamily();

/// See also [ProfileListPagination].
class ProfileListPaginationFamily
    extends Family<AsyncValue<IList<ProfileModel>>> {
  /// See also [ProfileListPagination].
  const ProfileListPaginationFamily();

  /// See also [ProfileListPagination].
  ProfileListPaginationProvider call({
    required int page,
    required ProfileListParam param,
  }) {
    return ProfileListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  ProfileListPaginationProvider getProviderOverride(
    covariant ProfileListPaginationProvider provider,
  ) {
    return call(
      page: provider.page,
      param: provider.param,
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
  String? get name => r'profileListPaginationProvider';
}

/// See also [ProfileListPagination].
class ProfileListPaginationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProfileListPagination,
        IList<ProfileModel>> {
  /// See also [ProfileListPagination].
  ProfileListPaginationProvider({
    required int page,
    required ProfileListParam param,
  }) : this._internal(
          () => ProfileListPagination()
            ..page = page
            ..param = param,
          from: profileListPaginationProvider,
          name: r'profileListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileListPaginationHash,
          dependencies: ProfileListPaginationFamily._dependencies,
          allTransitiveDependencies:
              ProfileListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  ProfileListPaginationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.param,
  }) : super.internal();

  final int page;
  final ProfileListParam param;

  @override
  FutureOr<IList<ProfileModel>> runNotifierBuild(
    covariant ProfileListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(ProfileListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileListPaginationProvider._internal(
        () => create()
          ..page = page
          ..param = param,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        param: param,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProfileListPagination,
      IList<ProfileModel>> createElement() {
    return _ProfileListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileListPaginationProvider &&
        other.page == page &&
        other.param == param;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, param.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<ProfileModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  ProfileListParam get param;
}

class _ProfileListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProfileListPagination,
        IList<ProfileModel>> with ProfileListPaginationRef {
  _ProfileListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as ProfileListPaginationProvider).page;
  @override
  ProfileListParam get param => (origin as ProfileListPaginationProvider).param;
}

String _$profilePaginationStateHash() =>
    r'2301eb741018154e8afcf0b4072153fd8ef21ae5';

abstract class _$ProfilePaginationState extends BuildlessAutoDisposeNotifier<
    ({bool isLoading, int totalPages, int currentPage})> {
  late final ProfileListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required ProfileListParam param,
  });
}

/// See also [ProfilePaginationState].
@ProviderFor(ProfilePaginationState)
const profilePaginationStateProvider = ProfilePaginationStateFamily();

/// See also [ProfilePaginationState].
class ProfilePaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [ProfilePaginationState].
  const ProfilePaginationStateFamily();

  /// See also [ProfilePaginationState].
  ProfilePaginationStateProvider call({
    required ProfileListParam param,
  }) {
    return ProfilePaginationStateProvider(
      param: param,
    );
  }

  @override
  ProfilePaginationStateProvider getProviderOverride(
    covariant ProfilePaginationStateProvider provider,
  ) {
    return call(
      param: provider.param,
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
  String? get name => r'profilePaginationStateProvider';
}

/// See also [ProfilePaginationState].
class ProfilePaginationStateProvider extends AutoDisposeNotifierProviderImpl<
    ProfilePaginationState,
    ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [ProfilePaginationState].
  ProfilePaginationStateProvider({
    required ProfileListParam param,
  }) : this._internal(
          () => ProfilePaginationState()..param = param,
          from: profilePaginationStateProvider,
          name: r'profilePaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profilePaginationStateHash,
          dependencies: ProfilePaginationStateFamily._dependencies,
          allTransitiveDependencies:
              ProfilePaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  ProfilePaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final ProfileListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant ProfilePaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(ProfilePaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfilePaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<ProfilePaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _ProfilePaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfilePaginationStateProvider && other.param == param;
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
mixin ProfilePaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  ProfileListParam get param;
}

class _ProfilePaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<ProfilePaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with ProfilePaginationStateRef {
  _ProfilePaginationStateProviderElement(super.provider);

  @override
  ProfileListParam get param =>
      (origin as ProfilePaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
