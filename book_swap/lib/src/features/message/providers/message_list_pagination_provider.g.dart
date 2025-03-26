// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messagePaginatedAtIndexHash() =>
    r'f77cbdb07eebcbe373497d756d846d995093a878';

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

/// See also [messagePaginatedAtIndex].
@ProviderFor(messagePaginatedAtIndex)
const messagePaginatedAtIndexProvider = MessagePaginatedAtIndexFamily();

/// See also [messagePaginatedAtIndex].
class MessagePaginatedAtIndexFamily
    extends Family<PaginatedItem<MessageModel>?> {
  /// See also [messagePaginatedAtIndex].
  const MessagePaginatedAtIndexFamily();

  /// See also [messagePaginatedAtIndex].
  MessagePaginatedAtIndexProvider call(
    int index, {
    required MessageListParam param,
  }) {
    return MessagePaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  MessagePaginatedAtIndexProvider getProviderOverride(
    covariant MessagePaginatedAtIndexProvider provider,
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
  String? get name => r'messagePaginatedAtIndexProvider';
}

/// See also [messagePaginatedAtIndex].
class MessagePaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<MessageModel>?> {
  /// See also [messagePaginatedAtIndex].
  MessagePaginatedAtIndexProvider(
    int index, {
    required MessageListParam param,
  }) : this._internal(
          (ref) => messagePaginatedAtIndex(
            ref as MessagePaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: messagePaginatedAtIndexProvider,
          name: r'messagePaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messagePaginatedAtIndexHash,
          dependencies: MessagePaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              MessagePaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  MessagePaginatedAtIndexProvider._internal(
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
  final MessageListParam param;

  @override
  Override overrideWith(
    PaginatedItem<MessageModel>? Function(MessagePaginatedAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MessagePaginatedAtIndexProvider._internal(
        (ref) => create(ref as MessagePaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<MessageModel>?> createElement() {
    return _MessagePaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessagePaginatedAtIndexProvider &&
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
mixin MessagePaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<MessageModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  MessageListParam get param;
}

class _MessagePaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<MessageModel>?>
    with MessagePaginatedAtIndexRef {
  _MessagePaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as MessagePaginatedAtIndexProvider).index;
  @override
  MessageListParam get param =>
      (origin as MessagePaginatedAtIndexProvider).param;
}

String _$messageListPaginationHash() =>
    r'21793e5081f9dd9ce8c83d1750ad9d3dd8ca40b5';

abstract class _$MessageListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<MessageModel>> {
  late final int page;
  late final MessageListParam param;

  FutureOr<IList<MessageModel>> build({
    required int page,
    required MessageListParam param,
  });
}

/// See also [MessageListPagination].
@ProviderFor(MessageListPagination)
const messageListPaginationProvider = MessageListPaginationFamily();

/// See also [MessageListPagination].
class MessageListPaginationFamily
    extends Family<AsyncValue<IList<MessageModel>>> {
  /// See also [MessageListPagination].
  const MessageListPaginationFamily();

  /// See also [MessageListPagination].
  MessageListPaginationProvider call({
    required int page,
    required MessageListParam param,
  }) {
    return MessageListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  MessageListPaginationProvider getProviderOverride(
    covariant MessageListPaginationProvider provider,
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
  String? get name => r'messageListPaginationProvider';
}

/// See also [MessageListPagination].
class MessageListPaginationProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MessageListPagination,
        IList<MessageModel>> {
  /// See also [MessageListPagination].
  MessageListPaginationProvider({
    required int page,
    required MessageListParam param,
  }) : this._internal(
          () => MessageListPagination()
            ..page = page
            ..param = param,
          from: messageListPaginationProvider,
          name: r'messageListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageListPaginationHash,
          dependencies: MessageListPaginationFamily._dependencies,
          allTransitiveDependencies:
              MessageListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  MessageListPaginationProvider._internal(
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
  final MessageListParam param;

  @override
  FutureOr<IList<MessageModel>> runNotifierBuild(
    covariant MessageListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(MessageListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MessageListPagination,
      IList<MessageModel>> createElement() {
    return _MessageListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageListPaginationProvider &&
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
mixin MessageListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<MessageModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  MessageListParam get param;
}

class _MessageListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MessageListPagination,
        IList<MessageModel>> with MessageListPaginationRef {
  _MessageListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as MessageListPaginationProvider).page;
  @override
  MessageListParam get param => (origin as MessageListPaginationProvider).param;
}

String _$messagePaginationStateHash() =>
    r'eefbdc3bd023491d41a9636c43210817b3e1df9f';

abstract class _$MessagePaginationState extends BuildlessAutoDisposeNotifier<
    ({bool isLoading, int totalPages, int currentPage})> {
  late final MessageListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required MessageListParam param,
  });
}

/// See also [MessagePaginationState].
@ProviderFor(MessagePaginationState)
const messagePaginationStateProvider = MessagePaginationStateFamily();

/// See also [MessagePaginationState].
class MessagePaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [MessagePaginationState].
  const MessagePaginationStateFamily();

  /// See also [MessagePaginationState].
  MessagePaginationStateProvider call({
    required MessageListParam param,
  }) {
    return MessagePaginationStateProvider(
      param: param,
    );
  }

  @override
  MessagePaginationStateProvider getProviderOverride(
    covariant MessagePaginationStateProvider provider,
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
  String? get name => r'messagePaginationStateProvider';
}

/// See also [MessagePaginationState].
class MessagePaginationStateProvider extends AutoDisposeNotifierProviderImpl<
    MessagePaginationState,
    ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [MessagePaginationState].
  MessagePaginationStateProvider({
    required MessageListParam param,
  }) : this._internal(
          () => MessagePaginationState()..param = param,
          from: messagePaginationStateProvider,
          name: r'messagePaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messagePaginationStateHash,
          dependencies: MessagePaginationStateFamily._dependencies,
          allTransitiveDependencies:
              MessagePaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  MessagePaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final MessageListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant MessagePaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(MessagePaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessagePaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<MessagePaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _MessagePaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessagePaginationStateProvider && other.param == param;
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
mixin MessagePaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  MessageListParam get param;
}

class _MessagePaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<MessagePaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with MessagePaginationStateRef {
  _MessagePaginationStateProviderElement(super.provider);

  @override
  MessageListParam get param =>
      (origin as MessagePaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
