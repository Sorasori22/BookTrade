// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'chat_clear_unread_count_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatClearUnreadCountHash() =>
    r'f20665c0af3f134cfcd77cd7c7eea65b5897b75a';

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

abstract class _$ChatClearUnreadCount
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final ProfileId recipientId;

  ProviderStatus<Unit> build(
    ProfileId recipientId,
  );
}

/// See also [ChatClearUnreadCount].
@ProviderFor(ChatClearUnreadCount)
const chatClearUnreadCountProvider = ChatClearUnreadCountFamily();

/// See also [ChatClearUnreadCount].
class ChatClearUnreadCountFamily extends Family<ProviderStatus<Unit>> {
  /// See also [ChatClearUnreadCount].
  const ChatClearUnreadCountFamily();

  /// See also [ChatClearUnreadCount].
  ChatClearUnreadCountProvider call(
    ProfileId recipientId,
  ) {
    return ChatClearUnreadCountProvider(
      recipientId,
    );
  }

  @override
  ChatClearUnreadCountProvider getProviderOverride(
    covariant ChatClearUnreadCountProvider provider,
  ) {
    return call(
      provider.recipientId,
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
  String? get name => r'chatClearUnreadCountProvider';
}

/// See also [ChatClearUnreadCount].
class ChatClearUnreadCountProvider extends AutoDisposeNotifierProviderImpl<
    ChatClearUnreadCount, ProviderStatus<Unit>> {
  /// See also [ChatClearUnreadCount].
  ChatClearUnreadCountProvider(
    ProfileId recipientId,
  ) : this._internal(
          () => ChatClearUnreadCount()..recipientId = recipientId,
          from: chatClearUnreadCountProvider,
          name: r'chatClearUnreadCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatClearUnreadCountHash,
          dependencies: ChatClearUnreadCountFamily._dependencies,
          allTransitiveDependencies:
              ChatClearUnreadCountFamily._allTransitiveDependencies,
          recipientId: recipientId,
        );

  ChatClearUnreadCountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.recipientId,
  }) : super.internal();

  final ProfileId recipientId;

  @override
  ProviderStatus<Unit> runNotifierBuild(
    covariant ChatClearUnreadCount notifier,
  ) {
    return notifier.build(
      recipientId,
    );
  }

  @override
  Override overrideWith(ChatClearUnreadCount Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatClearUnreadCountProvider._internal(
        () => create()..recipientId = recipientId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        recipientId: recipientId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ChatClearUnreadCount, ProviderStatus<Unit>>
      createElement() {
    return _ChatClearUnreadCountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatClearUnreadCountProvider &&
        other.recipientId == recipientId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, recipientId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatClearUnreadCountRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `recipientId` of this provider.
  ProfileId get recipientId;
}

class _ChatClearUnreadCountProviderElement
    extends AutoDisposeNotifierProviderElement<ChatClearUnreadCount,
        ProviderStatus<Unit>> with ChatClearUnreadCountRef {
  _ChatClearUnreadCountProviderElement(super.provider);

  @override
  ProfileId get recipientId =>
      (origin as ChatClearUnreadCountProvider).recipientId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
