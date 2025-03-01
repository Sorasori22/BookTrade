// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_rating_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRatingPaginatedAtIndexHash() =>
    r'1eedbcb51a6ba344a240d4a403b3677ec98627be';

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

/// See also [userRatingPaginatedAtIndex].
@ProviderFor(userRatingPaginatedAtIndex)
const userRatingPaginatedAtIndexProvider = UserRatingPaginatedAtIndexFamily();

/// See also [userRatingPaginatedAtIndex].
class UserRatingPaginatedAtIndexFamily
    extends Family<PaginatedItem<UserRatingModel>?> {
  /// See also [userRatingPaginatedAtIndex].
  const UserRatingPaginatedAtIndexFamily();

  /// See also [userRatingPaginatedAtIndex].
  UserRatingPaginatedAtIndexProvider call(
    int index, {
    required UserRatingListParam param,
  }) {
    return UserRatingPaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  UserRatingPaginatedAtIndexProvider getProviderOverride(
    covariant UserRatingPaginatedAtIndexProvider provider,
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
  String? get name => r'userRatingPaginatedAtIndexProvider';
}

/// See also [userRatingPaginatedAtIndex].
class UserRatingPaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<UserRatingModel>?> {
  /// See also [userRatingPaginatedAtIndex].
  UserRatingPaginatedAtIndexProvider(
    int index, {
    required UserRatingListParam param,
  }) : this._internal(
          (ref) => userRatingPaginatedAtIndex(
            ref as UserRatingPaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: userRatingPaginatedAtIndexProvider,
          name: r'userRatingPaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userRatingPaginatedAtIndexHash,
          dependencies: UserRatingPaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              UserRatingPaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  UserRatingPaginatedAtIndexProvider._internal(
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
  final UserRatingListParam param;

  @override
  Override overrideWith(
    PaginatedItem<UserRatingModel>? Function(
            UserRatingPaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserRatingPaginatedAtIndexProvider._internal(
        (ref) => create(ref as UserRatingPaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<UserRatingModel>?> createElement() {
    return _UserRatingPaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserRatingPaginatedAtIndexProvider &&
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
mixin UserRatingPaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<UserRatingModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  UserRatingListParam get param;
}

class _UserRatingPaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<UserRatingModel>?>
    with UserRatingPaginatedAtIndexRef {
  _UserRatingPaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as UserRatingPaginatedAtIndexProvider).index;
  @override
  UserRatingListParam get param =>
      (origin as UserRatingPaginatedAtIndexProvider).param;
}

String _$userRatingListPaginationHash() =>
    r'cb283cc0e6dc90c946846ee41a7cf305b829cfe2';

abstract class _$UserRatingListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<UserRatingModel>> {
  late final int page;
  late final UserRatingListParam param;

  FutureOr<IList<UserRatingModel>> build({
    required int page,
    required UserRatingListParam param,
  });
}

/// See also [UserRatingListPagination].
@ProviderFor(UserRatingListPagination)
const userRatingListPaginationProvider = UserRatingListPaginationFamily();

/// See also [UserRatingListPagination].
class UserRatingListPaginationFamily
    extends Family<AsyncValue<IList<UserRatingModel>>> {
  /// See also [UserRatingListPagination].
  const UserRatingListPaginationFamily();

  /// See also [UserRatingListPagination].
  UserRatingListPaginationProvider call({
    required int page,
    required UserRatingListParam param,
  }) {
    return UserRatingListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  UserRatingListPaginationProvider getProviderOverride(
    covariant UserRatingListPaginationProvider provider,
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
  String? get name => r'userRatingListPaginationProvider';
}

/// See also [UserRatingListPagination].
class UserRatingListPaginationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserRatingListPagination,
        IList<UserRatingModel>> {
  /// See also [UserRatingListPagination].
  UserRatingListPaginationProvider({
    required int page,
    required UserRatingListParam param,
  }) : this._internal(
          () => UserRatingListPagination()
            ..page = page
            ..param = param,
          from: userRatingListPaginationProvider,
          name: r'userRatingListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userRatingListPaginationHash,
          dependencies: UserRatingListPaginationFamily._dependencies,
          allTransitiveDependencies:
              UserRatingListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  UserRatingListPaginationProvider._internal(
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
  final UserRatingListParam param;

  @override
  FutureOr<IList<UserRatingModel>> runNotifierBuild(
    covariant UserRatingListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(UserRatingListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserRatingListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<UserRatingListPagination,
      IList<UserRatingModel>> createElement() {
    return _UserRatingListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserRatingListPaginationProvider &&
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
mixin UserRatingListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<UserRatingModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  UserRatingListParam get param;
}

class _UserRatingListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserRatingListPagination,
        IList<UserRatingModel>> with UserRatingListPaginationRef {
  _UserRatingListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as UserRatingListPaginationProvider).page;
  @override
  UserRatingListParam get param =>
      (origin as UserRatingListPaginationProvider).param;
}

String _$userRatingPaginationStateHash() =>
    r'5560dda5d8bc81fafd0ee80621271d9d65b8f585';

abstract class _$UserRatingPaginationState extends BuildlessAutoDisposeNotifier<
    ({bool isLoading, int totalPages, int currentPage})> {
  late final UserRatingListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required UserRatingListParam param,
  });
}

/// See also [UserRatingPaginationState].
@ProviderFor(UserRatingPaginationState)
const userRatingPaginationStateProvider = UserRatingPaginationStateFamily();

/// See also [UserRatingPaginationState].
class UserRatingPaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [UserRatingPaginationState].
  const UserRatingPaginationStateFamily();

  /// See also [UserRatingPaginationState].
  UserRatingPaginationStateProvider call({
    required UserRatingListParam param,
  }) {
    return UserRatingPaginationStateProvider(
      param: param,
    );
  }

  @override
  UserRatingPaginationStateProvider getProviderOverride(
    covariant UserRatingPaginationStateProvider provider,
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
  String? get name => r'userRatingPaginationStateProvider';
}

/// See also [UserRatingPaginationState].
class UserRatingPaginationStateProvider extends AutoDisposeNotifierProviderImpl<
    UserRatingPaginationState,
    ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [UserRatingPaginationState].
  UserRatingPaginationStateProvider({
    required UserRatingListParam param,
  }) : this._internal(
          () => UserRatingPaginationState()..param = param,
          from: userRatingPaginationStateProvider,
          name: r'userRatingPaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userRatingPaginationStateHash,
          dependencies: UserRatingPaginationStateFamily._dependencies,
          allTransitiveDependencies:
              UserRatingPaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  UserRatingPaginationStateProvider._internal(
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
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant UserRatingPaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(UserRatingPaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserRatingPaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<UserRatingPaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _UserRatingPaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserRatingPaginationStateProvider && other.param == param;
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
mixin UserRatingPaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  UserRatingListParam get param;
}

class _UserRatingPaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<UserRatingPaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with UserRatingPaginationStateRef {
  _UserRatingPaginationStateProviderElement(super.provider);

  @override
  UserRatingListParam get param =>
      (origin as UserRatingPaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
