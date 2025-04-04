// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'message_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final messageCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<MessageModel>?>((ref) => null);

abstract class _$MessageCreateWidget extends _$MessageCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(MessageModel result);
  @nonVirtual
  Future<AsyncValue<MessageModel>> call() async {
    final _callStatus = ref.read(messageCreateCallStatusProvider);
    final _updateCallStatus =
        ref.read(messageCreateCallStatusProvider.notifier);

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
  @protected
  Future<MessageModel> submit(MessageCreateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          MessageCreateParam Function(MessageCreateParam state) update) =>
      state = update(state);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageCreateHash() => r'b0be5cbb8c9bf289674346c583bf1994c462cb12';

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
