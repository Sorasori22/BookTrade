// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_unsent_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageUnsentHash() => r'af496a07137e40be684d7c93e5a565c7be2f2766';

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

abstract class _$MessageUnsent
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final MessageId messageId;

  ProviderStatus<Unit> build(
    MessageId messageId,
  );
}

/// See also [MessageUnsent].
@ProviderFor(MessageUnsent)
const messageUnsentProvider = MessageUnsentFamily();

/// See also [MessageUnsent].
class MessageUnsentFamily extends Family<ProviderStatus<Unit>> {
  /// See also [MessageUnsent].
  const MessageUnsentFamily();

  /// See also [MessageUnsent].
  MessageUnsentProvider call(
    MessageId messageId,
  ) {
    return MessageUnsentProvider(
      messageId,
    );
  }

  @override
  MessageUnsentProvider getProviderOverride(
    covariant MessageUnsentProvider provider,
  ) {
    return call(
      provider.messageId,
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
  String? get name => r'messageUnsentProvider';
}

/// See also [MessageUnsent].
class MessageUnsentProvider extends AutoDisposeNotifierProviderImpl<
    MessageUnsent, ProviderStatus<Unit>> {
  /// See also [MessageUnsent].
  MessageUnsentProvider(
    MessageId messageId,
  ) : this._internal(
          () => MessageUnsent()..messageId = messageId,
          from: messageUnsentProvider,
          name: r'messageUnsentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageUnsentHash,
          dependencies: MessageUnsentFamily._dependencies,
          allTransitiveDependencies:
              MessageUnsentFamily._allTransitiveDependencies,
          messageId: messageId,
        );

  MessageUnsentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.messageId,
  }) : super.internal();

  final MessageId messageId;

  @override
  ProviderStatus<Unit> runNotifierBuild(
    covariant MessageUnsent notifier,
  ) {
    return notifier.build(
      messageId,
    );
  }

  @override
  Override overrideWith(MessageUnsent Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageUnsentProvider._internal(
        () => create()..messageId = messageId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        messageId: messageId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<MessageUnsent, ProviderStatus<Unit>>
      createElement() {
    return _MessageUnsentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageUnsentProvider && other.messageId == messageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, messageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MessageUnsentRef on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `messageId` of this provider.
  MessageId get messageId;
}

class _MessageUnsentProviderElement extends AutoDisposeNotifierProviderElement<
    MessageUnsent, ProviderStatus<Unit>> with MessageUnsentRef {
  _MessageUnsentProviderElement(super.provider);

  @override
  MessageId get messageId => (origin as MessageUnsentProvider).messageId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
