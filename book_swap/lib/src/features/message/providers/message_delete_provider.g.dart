// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageDeleteHash() => r'9f9fdbf1eea59d19cdbeed77b6f527b0070d44ac';

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

abstract class _$MessageDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final MessageId id;

  ProviderStatus<Unit> build(
    MessageId id,
  );
}

/// See also [MessageDelete].
@ProviderFor(MessageDelete)
const messageDeleteProvider = MessageDeleteFamily();

/// See also [MessageDelete].
class MessageDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [MessageDelete].
  const MessageDeleteFamily();

  /// See also [MessageDelete].
  MessageDeleteProvider call(
    MessageId id,
  ) {
    return MessageDeleteProvider(
      id,
    );
  }

  @override
  MessageDeleteProvider getProviderOverride(
    covariant MessageDeleteProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'messageDeleteProvider';
}

/// See also [MessageDelete].
class MessageDeleteProvider extends AutoDisposeNotifierProviderImpl<
    MessageDelete, ProviderStatus<Unit>> {
  /// See also [MessageDelete].
  MessageDeleteProvider(
    MessageId id,
  ) : this._internal(
          () => MessageDelete()..id = id,
          from: messageDeleteProvider,
          name: r'messageDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageDeleteHash,
          dependencies: MessageDeleteFamily._dependencies,
          allTransitiveDependencies:
              MessageDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  MessageDeleteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final MessageId id;

  @override
  ProviderStatus<Unit> runNotifierBuild(
    covariant MessageDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(MessageDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageDeleteProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<MessageDelete, ProviderStatus<Unit>>
      createElement() {
    return _MessageDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageDeleteProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MessageDeleteRef on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  MessageId get id;
}

class _MessageDeleteProviderElement extends AutoDisposeNotifierProviderElement<
    MessageDelete, ProviderStatus<Unit>> with MessageDeleteRef {
  _MessageDeleteProviderElement(super.provider);

  @override
  MessageId get id => (origin as MessageDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
