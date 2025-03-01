// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userPaginatedAtIndexHash() =>
    r'da26604fcc2e154e135ef87fa75265699380f5ad';

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

/// See also [userPaginatedAtIndex].
@ProviderFor(userPaginatedAtIndex)
const userPaginatedAtIndexProvider = UserPaginatedAtIndexFamily();

/// See also [userPaginatedAtIndex].
class UserPaginatedAtIndexFamily extends Family<PaginatedItem<UserModel>?> {
  /// See also [userPaginatedAtIndex].
  const UserPaginatedAtIndexFamily();

  /// See also [userPaginatedAtIndex].
  UserPaginatedAtIndexProvider call(
    int index, {
    required UserListParam param,
  }) {
    return UserPaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  UserPaginatedAtIndexProvider getProviderOverride(
    covariant UserPaginatedAtIndexProvider provider,
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
  String? get name => r'userPaginatedAtIndexProvider';
}

/// See also [userPaginatedAtIndex].
class UserPaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<UserModel>?> {
  /// See also [userPaginatedAtIndex].
  UserPaginatedAtIndexProvider(
    int index, {
    required UserListParam param,
  }) : this._internal(
          (ref) => userPaginatedAtIndex(
            ref as UserPaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: userPaginatedAtIndexProvider,
          name: r'userPaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userPaginatedAtIndexHash,
          dependencies: UserPaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              UserPaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  UserPaginatedAtIndexProvider._internal(
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
  final UserListParam param;

  @override
  Override overrideWith(
    PaginatedItem<UserModel>? Function(UserPaginatedAtIndexRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserPaginatedAtIndexProvider._internal(
        (ref) => create(ref as UserPaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<UserModel>?> createElement() {
    return _UserPaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserPaginatedAtIndexProvider &&
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
mixin UserPaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<UserModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  UserListParam get param;
}

class _UserPaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<UserModel>?>
    with UserPaginatedAtIndexRef {
  _UserPaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as UserPaginatedAtIndexProvider).index;
  @override
  UserListParam get param => (origin as UserPaginatedAtIndexProvider).param;
}

String _$userListPaginationHash() =>
    r'6c1e4420e737ece39d8f9c6523b8af819c5e0c5a';

abstract class _$UserListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<UserModel>> {
  late final int page;
  late final UserListParam param;

  FutureOr<IList<UserModel>> build({
    required int page,
    required UserListParam param,
  });
}

/// See also [UserListPagination].
@ProviderFor(UserListPagination)
const userListPaginationProvider = UserListPaginationFamily();

/// See also [UserListPagination].
class UserListPaginationFamily extends Family<AsyncValue<IList<UserModel>>> {
  /// See also [UserListPagination].
  const UserListPaginationFamily();

  /// See also [UserListPagination].
  UserListPaginationProvider call({
    required int page,
    required UserListParam param,
  }) {
    return UserListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  UserListPaginationProvider getProviderOverride(
    covariant UserListPaginationProvider provider,
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
  String? get name => r'userListPaginationProvider';
}

/// See also [UserListPagination].
class UserListPaginationProvider extends AutoDisposeAsyncNotifierProviderImpl<
    UserListPagination, IList<UserModel>> {
  /// See also [UserListPagination].
  UserListPaginationProvider({
    required int page,
    required UserListParam param,
  }) : this._internal(
          () => UserListPagination()
            ..page = page
            ..param = param,
          from: userListPaginationProvider,
          name: r'userListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userListPaginationHash,
          dependencies: UserListPaginationFamily._dependencies,
          allTransitiveDependencies:
              UserListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  UserListPaginationProvider._internal(
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
  final UserListParam param;

  @override
  FutureOr<IList<UserModel>> runNotifierBuild(
    covariant UserListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(UserListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<UserListPagination, IList<UserModel>>
      createElement() {
    return _UserListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserListPaginationProvider &&
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
mixin UserListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<UserModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  UserListParam get param;
}

class _UserListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserListPagination,
        IList<UserModel>> with UserListPaginationRef {
  _UserListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as UserListPaginationProvider).page;
  @override
  UserListParam get param => (origin as UserListPaginationProvider).param;
}

String _$paginationStateHash() => r'72e479f0a49b40ee6fa2b6a4f178a455dff0a62b';

abstract class _$PaginationState extends BuildlessAutoDisposeNotifier<
    ({bool isLoading, int totalPages, int currentPage})> {
  late final UserListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required UserListParam param,
  });
}

/// See also [PaginationState].
@ProviderFor(PaginationState)
const paginationStateProvider = PaginationStateFamily();

/// See also [PaginationState].
class PaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [PaginationState].
  const PaginationStateFamily();

  /// See also [PaginationState].
  PaginationStateProvider call({
    required UserListParam param,
  }) {
    return PaginationStateProvider(
      param: param,
    );
  }

  @override
  PaginationStateProvider getProviderOverride(
    covariant PaginationStateProvider provider,
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
  String? get name => r'paginationStateProvider';
}

/// See also [PaginationState].
class PaginationStateProvider extends AutoDisposeNotifierProviderImpl<
    PaginationState, ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [PaginationState].
  PaginationStateProvider({
    required UserListParam param,
  }) : this._internal(
          () => PaginationState()..param = param,
          from: paginationStateProvider,
          name: r'paginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paginationStateHash,
          dependencies: PaginationStateFamily._dependencies,
          allTransitiveDependencies:
              PaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  PaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final UserListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant PaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(PaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: PaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<PaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _PaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaginationStateProvider && other.param == param;
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
mixin PaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  UserListParam get param;
}

class _PaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<PaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with PaginationStateRef {
  _PaginationStateProviderElement(super.provider);

  @override
  UserListParam get param => (origin as PaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
