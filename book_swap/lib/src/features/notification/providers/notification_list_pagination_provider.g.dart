// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'notification_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationPaginatedAtIndexHash() =>
    r'9975fbe7a3ed1f332b1dd592f5b9b3b52a100c7b';

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

/// See also [notificationPaginatedAtIndex].
@ProviderFor(notificationPaginatedAtIndex)
const notificationPaginatedAtIndexProvider =
    NotificationPaginatedAtIndexFamily();

/// See also [notificationPaginatedAtIndex].
class NotificationPaginatedAtIndexFamily
    extends Family<PaginatedItem<NotificationModel>?> {
  /// See also [notificationPaginatedAtIndex].
  const NotificationPaginatedAtIndexFamily();

  /// See also [notificationPaginatedAtIndex].
  NotificationPaginatedAtIndexProvider call(
    int index, {
    required NotificationListParam param,
  }) {
    return NotificationPaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  NotificationPaginatedAtIndexProvider getProviderOverride(
    covariant NotificationPaginatedAtIndexProvider provider,
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
  String? get name => r'notificationPaginatedAtIndexProvider';
}

/// See also [notificationPaginatedAtIndex].
class NotificationPaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<NotificationModel>?> {
  /// See also [notificationPaginatedAtIndex].
  NotificationPaginatedAtIndexProvider(
    int index, {
    required NotificationListParam param,
  }) : this._internal(
          (ref) => notificationPaginatedAtIndex(
            ref as NotificationPaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: notificationPaginatedAtIndexProvider,
          name: r'notificationPaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationPaginatedAtIndexHash,
          dependencies: NotificationPaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              NotificationPaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  NotificationPaginatedAtIndexProvider._internal(
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
  final NotificationListParam param;

  @override
  Override overrideWith(
    PaginatedItem<NotificationModel>? Function(
            NotificationPaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NotificationPaginatedAtIndexProvider._internal(
        (ref) => create(ref as NotificationPaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<NotificationModel>?>
      createElement() {
    return _NotificationPaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationPaginatedAtIndexProvider &&
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
mixin NotificationPaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<NotificationModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  NotificationListParam get param;
}

class _NotificationPaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<NotificationModel>?>
    with NotificationPaginatedAtIndexRef {
  _NotificationPaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as NotificationPaginatedAtIndexProvider).index;
  @override
  NotificationListParam get param =>
      (origin as NotificationPaginatedAtIndexProvider).param;
}

String _$notificationListPaginationHash() =>
    r'd6731acc7aa915a5bb61672be87e5b64d6d8891a';

abstract class _$NotificationListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<NotificationModel>> {
  late final int page;
  late final NotificationListParam param;

  FutureOr<IList<NotificationModel>> build({
    required int page,
    required NotificationListParam param,
  });
}

/// See also [NotificationListPagination].
@ProviderFor(NotificationListPagination)
const notificationListPaginationProvider = NotificationListPaginationFamily();

/// See also [NotificationListPagination].
class NotificationListPaginationFamily
    extends Family<AsyncValue<IList<NotificationModel>>> {
  /// See also [NotificationListPagination].
  const NotificationListPaginationFamily();

  /// See also [NotificationListPagination].
  NotificationListPaginationProvider call({
    required int page,
    required NotificationListParam param,
  }) {
    return NotificationListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  NotificationListPaginationProvider getProviderOverride(
    covariant NotificationListPaginationProvider provider,
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
  String? get name => r'notificationListPaginationProvider';
}

/// See also [NotificationListPagination].
class NotificationListPaginationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<NotificationListPagination,
        IList<NotificationModel>> {
  /// See also [NotificationListPagination].
  NotificationListPaginationProvider({
    required int page,
    required NotificationListParam param,
  }) : this._internal(
          () => NotificationListPagination()
            ..page = page
            ..param = param,
          from: notificationListPaginationProvider,
          name: r'notificationListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationListPaginationHash,
          dependencies: NotificationListPaginationFamily._dependencies,
          allTransitiveDependencies:
              NotificationListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  NotificationListPaginationProvider._internal(
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
  final NotificationListParam param;

  @override
  FutureOr<IList<NotificationModel>> runNotifierBuild(
    covariant NotificationListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(NotificationListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<NotificationListPagination,
      IList<NotificationModel>> createElement() {
    return _NotificationListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationListPaginationProvider &&
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
mixin NotificationListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<NotificationModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  NotificationListParam get param;
}

class _NotificationListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NotificationListPagination,
        IList<NotificationModel>> with NotificationListPaginationRef {
  _NotificationListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as NotificationListPaginationProvider).page;
  @override
  NotificationListParam get param =>
      (origin as NotificationListPaginationProvider).param;
}

String _$notificationPaginationStateHash() =>
    r'f30b36dd49607047c10305c0dd77fdcbd2d625e5';

abstract class _$NotificationPaginationState
    extends BuildlessAutoDisposeNotifier<
        ({bool isLoading, int totalPages, int currentPage})> {
  late final NotificationListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required NotificationListParam param,
  });
}

/// See also [NotificationPaginationState].
@ProviderFor(NotificationPaginationState)
const notificationPaginationStateProvider = NotificationPaginationStateFamily();

/// See also [NotificationPaginationState].
class NotificationPaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [NotificationPaginationState].
  const NotificationPaginationStateFamily();

  /// See also [NotificationPaginationState].
  NotificationPaginationStateProvider call({
    required NotificationListParam param,
  }) {
    return NotificationPaginationStateProvider(
      param: param,
    );
  }

  @override
  NotificationPaginationStateProvider getProviderOverride(
    covariant NotificationPaginationStateProvider provider,
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
  String? get name => r'notificationPaginationStateProvider';
}

/// See also [NotificationPaginationState].
class NotificationPaginationStateProvider
    extends AutoDisposeNotifierProviderImpl<NotificationPaginationState,
        ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [NotificationPaginationState].
  NotificationPaginationStateProvider({
    required NotificationListParam param,
  }) : this._internal(
          () => NotificationPaginationState()..param = param,
          from: notificationPaginationStateProvider,
          name: r'notificationPaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationPaginationStateHash,
          dependencies: NotificationPaginationStateFamily._dependencies,
          allTransitiveDependencies:
              NotificationPaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  NotificationPaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final NotificationListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant NotificationPaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(NotificationPaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationPaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<NotificationPaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _NotificationPaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationPaginationStateProvider && other.param == param;
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
mixin NotificationPaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  NotificationListParam get param;
}

class _NotificationPaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<NotificationPaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with NotificationPaginationStateRef {
  _NotificationPaginationStateProviderElement(super.provider);

  @override
  NotificationListParam get param =>
      (origin as NotificationPaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
