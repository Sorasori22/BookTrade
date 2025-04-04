// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_delete_chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageDeleteChatHash() => r'8be8cb1c08c33d7a4c2552a966adcd5ed329b7c3';

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

abstract class _$MessageDeleteChat
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final ProfileId recipientId;

  ProviderStatus<Unit> build(
    ProfileId recipientId,
  );
}

/// See also [MessageDeleteChat].
@ProviderFor(MessageDeleteChat)
const messageDeleteChatProvider = MessageDeleteChatFamily();

/// See also [MessageDeleteChat].
class MessageDeleteChatFamily extends Family<ProviderStatus<Unit>> {
  /// See also [MessageDeleteChat].
  const MessageDeleteChatFamily();

  /// See also [MessageDeleteChat].
  MessageDeleteChatProvider call(
    ProfileId recipientId,
  ) {
    return MessageDeleteChatProvider(
      recipientId,
    );
  }

  @override
  MessageDeleteChatProvider getProviderOverride(
    covariant MessageDeleteChatProvider provider,
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
  String? get name => r'messageDeleteChatProvider';
}

/// See also [MessageDeleteChat].
class MessageDeleteChatProvider extends AutoDisposeNotifierProviderImpl<
    MessageDeleteChat, ProviderStatus<Unit>> {
  /// See also [MessageDeleteChat].
  MessageDeleteChatProvider(
    ProfileId recipientId,
  ) : this._internal(
          () => MessageDeleteChat()..recipientId = recipientId,
          from: messageDeleteChatProvider,
          name: r'messageDeleteChatProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageDeleteChatHash,
          dependencies: MessageDeleteChatFamily._dependencies,
          allTransitiveDependencies:
              MessageDeleteChatFamily._allTransitiveDependencies,
          recipientId: recipientId,
        );

  MessageDeleteChatProvider._internal(
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
    covariant MessageDeleteChat notifier,
  ) {
    return notifier.build(
      recipientId,
    );
  }

  @override
  Override overrideWith(MessageDeleteChat Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageDeleteChatProvider._internal(
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
  AutoDisposeNotifierProviderElement<MessageDeleteChat, ProviderStatus<Unit>>
      createElement() {
    return _MessageDeleteChatProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageDeleteChatProvider &&
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
mixin MessageDeleteChatRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `recipientId` of this provider.
  ProfileId get recipientId;
}

class _MessageDeleteChatProviderElement
    extends AutoDisposeNotifierProviderElement<MessageDeleteChat,
        ProviderStatus<Unit>> with MessageDeleteChatRef {
  _MessageDeleteChatProviderElement(super.provider);

  @override
  ProfileId get recipientId =>
      (origin as MessageDeleteChatProvider).recipientId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
