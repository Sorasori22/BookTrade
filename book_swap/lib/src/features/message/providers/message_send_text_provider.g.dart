// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_send_text_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageSendTextHash() => r'ff625d292331b6dca96391be16922b4e7a13cbf6';

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

abstract class _$MessageSendText
    extends BuildlessAutoDisposeNotifier<ProviderStatus<MessageModel>> {
  late final ProfileId recipientId;

  ProviderStatus<MessageModel> build(
    ProfileId recipientId,
  );
}

/// See also [MessageSendText].
@ProviderFor(MessageSendText)
const messageSendTextProvider = MessageSendTextFamily();

/// See also [MessageSendText].
class MessageSendTextFamily extends Family<ProviderStatus<MessageModel>> {
  /// See also [MessageSendText].
  const MessageSendTextFamily();

  /// See also [MessageSendText].
  MessageSendTextProvider call(
    ProfileId recipientId,
  ) {
    return MessageSendTextProvider(
      recipientId,
    );
  }

  @override
  MessageSendTextProvider getProviderOverride(
    covariant MessageSendTextProvider provider,
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
  String? get name => r'messageSendTextProvider';
}

/// See also [MessageSendText].
class MessageSendTextProvider extends AutoDisposeNotifierProviderImpl<
    MessageSendText, ProviderStatus<MessageModel>> {
  /// See also [MessageSendText].
  MessageSendTextProvider(
    ProfileId recipientId,
  ) : this._internal(
          () => MessageSendText()..recipientId = recipientId,
          from: messageSendTextProvider,
          name: r'messageSendTextProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageSendTextHash,
          dependencies: MessageSendTextFamily._dependencies,
          allTransitiveDependencies:
              MessageSendTextFamily._allTransitiveDependencies,
          recipientId: recipientId,
        );

  MessageSendTextProvider._internal(
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
    covariant MessageSendText notifier,
  ) {
    return notifier.build(
      recipientId,
    );
  }

  @override
  Override overrideWith(MessageSendText Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageSendTextProvider._internal(
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
  AutoDisposeNotifierProviderElement<MessageSendText,
      ProviderStatus<MessageModel>> createElement() {
    return _MessageSendTextProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageSendTextProvider && other.recipientId == recipientId;
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
mixin MessageSendTextRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<MessageModel>> {
  /// The parameter `recipientId` of this provider.
  ProfileId get recipientId;
}

class _MessageSendTextProviderElement
    extends AutoDisposeNotifierProviderElement<MessageSendText,
        ProviderStatus<MessageModel>> with MessageSendTextRef {
  _MessageSendTextProviderElement(super.provider);

  @override
  ProfileId get recipientId => (origin as MessageSendTextProvider).recipientId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
