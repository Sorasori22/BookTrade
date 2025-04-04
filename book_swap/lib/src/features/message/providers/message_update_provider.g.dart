// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final messageUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<MessageModel>?, ({MessageId messageId})>(
        (ref, _) => null);

abstract class _$MessageUpdateWidget extends _$MessageUpdate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(MessageModel result);
  @nonVirtual
  Future<AsyncValue<MessageModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus =
        ref.read(messageUpdateCallStatusProvider((messageId: messageId)));
    final _updateCallStatus = ref
        .read(messageUpdateCallStatusProvider((messageId: messageId)).notifier);

    if (_callStatus?.isLoading == true) return const AsyncValue.loading();

    if (_callStatus?.hasValue == true) {
      return _callStatus!;
    }

    _updateCallStatus.state = const AsyncValue.loading();
    final result = await AsyncValue.guard(
        () async => await submit(this.state.requireValue));

    _updateCallStatus.state = result;

    if (result.hasValue) {
      onSuccess(result.requireValue);
    }

    return result;
  }

  void invalidateSelf() {
    ref.invalidate(messageUpdateCallStatusProvider);
    ref.invalidateSelf();
  }

  /// Internal submit implementation for form submission.
  ///
  /// ⚠️ WARNING: Do not call this method directly - use [call] instead.
  /// Direct usage bypasses:
  /// - Error handling
  /// - Loading state management
  /// - Success callback handling
  /// - Form validation
  ///
  /// This method should be overridden to implement the actual form submission logic:
  /// 1. Validate form data
  /// 2. Transform data if needed
  /// 3. Call API/repository methods
  /// 4. Return success/failure result
  @visibleForOverriding
  @protected
  Future<MessageModel> submit(MessageUpdateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          MessageUpdateParam Function(MessageUpdateParam state) update) =>
      state = state.whenData(update);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageUpdateHash() => r'18878045522b8fb491fdec35803e4c9f0e966479';

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

abstract class _$MessageUpdate
    extends BuildlessAutoDisposeAsyncNotifier<MessageUpdateParam> {
  late final MessageId messageId;

  FutureOr<MessageUpdateParam> build(
    MessageId messageId,
  );
}

/// See also [MessageUpdate].
@ProviderFor(MessageUpdate)
const messageUpdateProvider = MessageUpdateFamily();

/// See also [MessageUpdate].
class MessageUpdateFamily extends Family<AsyncValue<MessageUpdateParam>> {
  /// See also [MessageUpdate].
  const MessageUpdateFamily();

  /// See also [MessageUpdate].
  MessageUpdateProvider call(
    MessageId messageId,
  ) {
    return MessageUpdateProvider(
      messageId,
    );
  }

  @override
  MessageUpdateProvider getProviderOverride(
    covariant MessageUpdateProvider provider,
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
  String? get name => r'messageUpdateProvider';
}

/// See also [MessageUpdate].
class MessageUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MessageUpdate, MessageUpdateParam> {
  /// See also [MessageUpdate].
  MessageUpdateProvider(
    MessageId messageId,
  ) : this._internal(
          () => MessageUpdate()..messageId = messageId,
          from: messageUpdateProvider,
          name: r'messageUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageUpdateHash,
          dependencies: MessageUpdateFamily._dependencies,
          allTransitiveDependencies:
              MessageUpdateFamily._allTransitiveDependencies,
          messageId: messageId,
        );

  MessageUpdateProvider._internal(
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
  FutureOr<MessageUpdateParam> runNotifierBuild(
    covariant MessageUpdate notifier,
  ) {
    return notifier.build(
      messageId,
    );
  }

  @override
  Override overrideWith(MessageUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: MessageUpdateProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MessageUpdate, MessageUpdateParam>
      createElement() {
    return _MessageUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageUpdateProvider && other.messageId == messageId;
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
mixin MessageUpdateRef
    on AutoDisposeAsyncNotifierProviderRef<MessageUpdateParam> {
  /// The parameter `messageId` of this provider.
  MessageId get messageId;
}

class _MessageUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MessageUpdate,
        MessageUpdateParam> with MessageUpdateRef {
  _MessageUpdateProviderElement(super.provider);

  @override
  MessageId get messageId => (origin as MessageUpdateProvider).messageId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
