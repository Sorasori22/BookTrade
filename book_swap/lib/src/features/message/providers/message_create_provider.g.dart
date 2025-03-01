// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final messageCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<MessageModel>?>((ref) => null);

abstract class _$MessageCreateWidget extends _$MessageCreate {
  static final messageCreateCallStatusProvider =
      StateProvider.autoDispose<AsyncValue<MessageModel>?>((ref) => null);

  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(MessageModel result) {}
  @protected
  @nonVirtual
  Future<AsyncValue<MessageModel>> call() async {
    final _callStatus = ref.read(messageCreateCallStatusProvider);
    final _updateCallStatus =
        ref.read(messageCreateCallStatusProvider.notifier);

    // If it's already loading, return loading
    if (_callStatus?.isLoading == true) return const AsyncValue.loading();

    if (_callStatus?.hasValue == true) {
      return _callStatus!;
    }

    _updateCallStatus.state = const AsyncValue.loading();
    final result = await AsyncValue.guard(() async => await submit(this.state));

    _updateCallStatus.state = result;

    if (result.hasValue) {
      onSuccess(result.requireValue);
    }

    return result;
  }

  void invalidateSelf() {
    ref.invalidate(messageCreateCallStatusProvider);
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
  Future<MessageModel> submit(MessageCreateParam state);

  /// Update the state of the form.
  /// This allow for more flexible to update specific fields.
  void updateState(
          MessageCreateParam Function(MessageCreateParam state) update) =>
      state = update(state);

  /// Update the senderId field of MessageCreateParam class.
  void updateSenderId(ProfileId newValue) =>
      state = state.copyWith(senderId: newValue);

  /// Update the recipientId field of MessageCreateParam class.
  void updateRecipientId(ProfileId newValue) =>
      state = state.copyWith(recipientId: newValue);

  /// Update the content field of MessageCreateParam class.
  void updateContent(String newValue) =>
      state = state.copyWith(content: newValue);

  /// Update the tradeRequestId field of MessageCreateParam class.
  void updateTradeRequestId(int? newValue) =>
      state = state.copyWith(tradeRequestId: newValue);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageCreateHash() => r'f9e8e6389077c0e4f4e308548520bbed4da6f32e';

/// See also [MessageCreate].
@ProviderFor(MessageCreate)
final messageCreateProvider =
    AutoDisposeNotifierProvider<MessageCreate, MessageCreateParam>.internal(
  MessageCreate.new,
  name: r'messageCreateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$messageCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MessageCreate = AutoDisposeNotifier<MessageCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
