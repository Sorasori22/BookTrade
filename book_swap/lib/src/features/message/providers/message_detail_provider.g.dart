// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageDetailHash() => r'b7feadb637d16198efa6c01e77536f3210265afe';

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

abstract class _$MessageDetail
    extends BuildlessAutoDisposeAsyncNotifier<MessageModel> {
  late final MessageId id;

  FutureOr<MessageModel> build(
    MessageId id,
  );
}

/// See also [MessageDetail].
@ProviderFor(MessageDetail)
const messageDetailProvider = MessageDetailFamily();

/// See also [MessageDetail].
class MessageDetailFamily extends Family<AsyncValue<MessageModel>> {
  /// See also [MessageDetail].
  const MessageDetailFamily();

  /// See also [MessageDetail].
  MessageDetailProvider call(
    MessageId id,
  ) {
    return MessageDetailProvider(
      id,
    );
  }

  @override
  MessageDetailProvider getProviderOverride(
    covariant MessageDetailProvider provider,
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
  String? get name => r'messageDetailProvider';
}

/// See also [MessageDetail].
class MessageDetailProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MessageDetail, MessageModel> {
  /// See also [MessageDetail].
  MessageDetailProvider(
    MessageId id,
  ) : this._internal(
          () => MessageDetail()..id = id,
          from: messageDetailProvider,
          name: r'messageDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageDetailHash,
          dependencies: MessageDetailFamily._dependencies,
          allTransitiveDependencies:
              MessageDetailFamily._allTransitiveDependencies,
          id: id,
        );

  MessageDetailProvider._internal(
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
  FutureOr<MessageModel> runNotifierBuild(
    covariant MessageDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(MessageDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MessageDetail, MessageModel>
      createElement() {
    return _MessageDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageDetailProvider && other.id == id;
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
mixin MessageDetailRef on AutoDisposeAsyncNotifierProviderRef<MessageModel> {
  /// The parameter `id` of this provider.
  MessageId get id;
}

class _MessageDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MessageDetail, MessageModel>
    with MessageDetailRef {
  _MessageDetailProviderElement(super.provider);

  @override
  MessageId get id => (origin as MessageDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
