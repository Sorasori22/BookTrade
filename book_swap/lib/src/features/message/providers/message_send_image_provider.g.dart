// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_send_image_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageSendImageHash() => r'121fc20fbe84bafde24e0b53fcdb0eb1dd93cfaf';

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

abstract class _$MessageSendImage
    extends BuildlessAutoDisposeNotifier<ProviderStatus<MessageModel>> {
  late final ProfileId recipientId;

  ProviderStatus<MessageModel> build(
    ProfileId recipientId,
  );
}

/// See also [MessageSendImage].
@ProviderFor(MessageSendImage)
const messageSendImageProvider = MessageSendImageFamily();

/// See also [MessageSendImage].
class MessageSendImageFamily extends Family<ProviderStatus<MessageModel>> {
  /// See also [MessageSendImage].
  const MessageSendImageFamily();

  /// See also [MessageSendImage].
  MessageSendImageProvider call(
    ProfileId recipientId,
  ) {
    return MessageSendImageProvider(
      recipientId,
    );
  }

  @override
  MessageSendImageProvider getProviderOverride(
    covariant MessageSendImageProvider provider,
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
  String? get name => r'messageSendImageProvider';
}

/// See also [MessageSendImage].
class MessageSendImageProvider extends AutoDisposeNotifierProviderImpl<
    MessageSendImage, ProviderStatus<MessageModel>> {
  /// See also [MessageSendImage].
  MessageSendImageProvider(
    ProfileId recipientId,
  ) : this._internal(
          () => MessageSendImage()..recipientId = recipientId,
          from: messageSendImageProvider,
          name: r'messageSendImageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageSendImageHash,
          dependencies: MessageSendImageFamily._dependencies,
          allTransitiveDependencies:
              MessageSendImageFamily._allTransitiveDependencies,
          recipientId: recipientId,
        );

  MessageSendImageProvider._internal(
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
  ProviderStatus<MessageModel> runNotifierBuild(
    covariant MessageSendImage notifier,
  ) {
    return notifier.build(
      recipientId,
    );
  }

  @override
  Override overrideWith(MessageSendImage Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageSendImageProvider._internal(
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
  AutoDisposeNotifierProviderElement<MessageSendImage,
      ProviderStatus<MessageModel>> createElement() {
    return _MessageSendImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageSendImageProvider &&
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
mixin MessageSendImageRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<MessageModel>> {
  /// The parameter `recipientId` of this provider.
  ProfileId get recipientId;
}

class _MessageSendImageProviderElement
    extends AutoDisposeNotifierProviderElement<MessageSendImage,
        ProviderStatus<MessageModel>> with MessageSendImageRef {
  _MessageSendImageProviderElement(super.provider);

  @override
  ProfileId get recipientId => (origin as MessageSendImageProvider).recipientId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
