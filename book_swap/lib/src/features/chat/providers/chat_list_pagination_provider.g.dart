// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'chat_list_pagination_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatPaginatedAtIndexHash() =>
    r'debfe4b2340ef44bbfeb51c641fdcfb6d37dfbba';

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

/// See also [chatPaginatedAtIndex].
@ProviderFor(chatPaginatedAtIndex)
const chatPaginatedAtIndexProvider = ChatPaginatedAtIndexFamily();

/// See also [chatPaginatedAtIndex].
class ChatPaginatedAtIndexFamily extends Family<PaginatedItem<ChatModel>?> {
  /// See also [chatPaginatedAtIndex].
  const ChatPaginatedAtIndexFamily();

  /// See also [chatPaginatedAtIndex].
  ChatPaginatedAtIndexProvider call(
    int index, {
    required ChatListParam param,
  }) {
    return ChatPaginatedAtIndexProvider(
      index,
      param: param,
    );
  }

  @override
  ChatPaginatedAtIndexProvider getProviderOverride(
    covariant ChatPaginatedAtIndexProvider provider,
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
  String? get name => r'chatPaginatedAtIndexProvider';
}

/// See also [chatPaginatedAtIndex].
class ChatPaginatedAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<ChatModel>?> {
  /// See also [chatPaginatedAtIndex].
  ChatPaginatedAtIndexProvider(
    int index, {
    required ChatListParam param,
  }) : this._internal(
          (ref) => chatPaginatedAtIndex(
            ref as ChatPaginatedAtIndexRef,
            index,
            param: param,
          ),
          from: chatPaginatedAtIndexProvider,
          name: r'chatPaginatedAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatPaginatedAtIndexHash,
          dependencies: ChatPaginatedAtIndexFamily._dependencies,
          allTransitiveDependencies:
              ChatPaginatedAtIndexFamily._allTransitiveDependencies,
          index: index,
          param: param,
        );

  ChatPaginatedAtIndexProvider._internal(
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
  final ChatListParam param;

  @override
  Override overrideWith(
    PaginatedItem<ChatModel>? Function(ChatPaginatedAtIndexRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChatPaginatedAtIndexProvider._internal(
        (ref) => create(ref as ChatPaginatedAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<ChatModel>?> createElement() {
    return _ChatPaginatedAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatPaginatedAtIndexProvider &&
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
mixin ChatPaginatedAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<ChatModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `param` of this provider.
  ChatListParam get param;
}

class _ChatPaginatedAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<ChatModel>?>
    with ChatPaginatedAtIndexRef {
  _ChatPaginatedAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as ChatPaginatedAtIndexProvider).index;
  @override
  ChatListParam get param => (origin as ChatPaginatedAtIndexProvider).param;
}

String _$chatListPaginationHash() =>
    r'fdb01bc7fca9ec8cc6f61ae536b4f6f3d095a712';

abstract class _$ChatListPagination
    extends BuildlessAutoDisposeAsyncNotifier<IList<ChatModel>> {
  late final int page;
  late final ChatListParam param;

  FutureOr<IList<ChatModel>> build({
    required int page,
    required ChatListParam param,
  });
}

/// See also [ChatListPagination].
@ProviderFor(ChatListPagination)
const chatListPaginationProvider = ChatListPaginationFamily();

/// See also [ChatListPagination].
class ChatListPaginationFamily extends Family<AsyncValue<IList<ChatModel>>> {
  /// See also [ChatListPagination].
  const ChatListPaginationFamily();

  /// See also [ChatListPagination].
  ChatListPaginationProvider call({
    required int page,
    required ChatListParam param,
  }) {
    return ChatListPaginationProvider(
      page: page,
      param: param,
    );
  }

  @override
  ChatListPaginationProvider getProviderOverride(
    covariant ChatListPaginationProvider provider,
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
  String? get name => r'chatListPaginationProvider';
}

/// See also [ChatListPagination].
class ChatListPaginationProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ChatListPagination, IList<ChatModel>> {
  /// See also [ChatListPagination].
  ChatListPaginationProvider({
    required int page,
    required ChatListParam param,
  }) : this._internal(
          () => ChatListPagination()
            ..page = page
            ..param = param,
          from: chatListPaginationProvider,
          name: r'chatListPaginationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatListPaginationHash,
          dependencies: ChatListPaginationFamily._dependencies,
          allTransitiveDependencies:
              ChatListPaginationFamily._allTransitiveDependencies,
          page: page,
          param: param,
        );

  ChatListPaginationProvider._internal(
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
  final ChatListParam param;

  @override
  FutureOr<IList<ChatModel>> runNotifierBuild(
    covariant ChatListPagination notifier,
  ) {
    return notifier.build(
      page: page,
      param: param,
    );
  }

  @override
  Override overrideWith(ChatListPagination Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatListPaginationProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ChatListPagination, IList<ChatModel>>
      createElement() {
    return _ChatListPaginationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatListPaginationProvider &&
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
mixin ChatListPaginationRef
    on AutoDisposeAsyncNotifierProviderRef<IList<ChatModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `param` of this provider.
  ChatListParam get param;
}

class _ChatListPaginationProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ChatListPagination,
        IList<ChatModel>> with ChatListPaginationRef {
  _ChatListPaginationProviderElement(super.provider);

  @override
  int get page => (origin as ChatListPaginationProvider).page;
  @override
  ChatListParam get param => (origin as ChatListPaginationProvider).param;
}

String _$chatPaginationStateHash() =>
    r'afac3b954f55584f1d1ebdfe2a8a95d8b81a49c8';

abstract class _$ChatPaginationState extends BuildlessAutoDisposeNotifier<
    ({bool isLoading, int totalPages, int currentPage})> {
  late final ChatListParam param;

  ({bool isLoading, int totalPages, int currentPage}) build({
    required ChatListParam param,
  });
}

/// See also [ChatPaginationState].
@ProviderFor(ChatPaginationState)
const chatPaginationStateProvider = ChatPaginationStateFamily();

/// See also [ChatPaginationState].
class ChatPaginationStateFamily
    extends Family<({bool isLoading, int totalPages, int currentPage})> {
  /// See also [ChatPaginationState].
  const ChatPaginationStateFamily();

  /// See also [ChatPaginationState].
  ChatPaginationStateProvider call({
    required ChatListParam param,
  }) {
    return ChatPaginationStateProvider(
      param: param,
    );
  }

  @override
  ChatPaginationStateProvider getProviderOverride(
    covariant ChatPaginationStateProvider provider,
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
  String? get name => r'chatPaginationStateProvider';
}

/// See also [ChatPaginationState].
class ChatPaginationStateProvider extends AutoDisposeNotifierProviderImpl<
    ChatPaginationState, ({bool isLoading, int totalPages, int currentPage})> {
  /// See also [ChatPaginationState].
  ChatPaginationStateProvider({
    required ChatListParam param,
  }) : this._internal(
          () => ChatPaginationState()..param = param,
          from: chatPaginationStateProvider,
          name: r'chatPaginationStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatPaginationStateHash,
          dependencies: ChatPaginationStateFamily._dependencies,
          allTransitiveDependencies:
              ChatPaginationStateFamily._allTransitiveDependencies,
          param: param,
        );

  ChatPaginationStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.param,
  }) : super.internal();

  final ChatListParam param;

  @override
  ({bool isLoading, int totalPages, int currentPage}) runNotifierBuild(
    covariant ChatPaginationState notifier,
  ) {
    return notifier.build(
      param: param,
    );
  }

  @override
  Override overrideWith(ChatPaginationState Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatPaginationStateProvider._internal(
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
  AutoDisposeNotifierProviderElement<ChatPaginationState,
      ({bool isLoading, int totalPages, int currentPage})> createElement() {
    return _ChatPaginationStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatPaginationStateProvider && other.param == param;
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
mixin ChatPaginationStateRef on AutoDisposeNotifierProviderRef<
    ({bool isLoading, int totalPages, int currentPage})> {
  /// The parameter `param` of this provider.
  ChatListParam get param;
}

class _ChatPaginationStateProviderElement
    extends AutoDisposeNotifierProviderElement<ChatPaginationState,
        ({bool isLoading, int totalPages, int currentPage})>
    with ChatPaginationStateRef {
  _ChatPaginationStateProviderElement(super.provider);

  @override
  ChatListParam get param => (origin as ChatPaginationStateProvider).param;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
