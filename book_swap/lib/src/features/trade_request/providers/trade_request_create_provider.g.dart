// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final tradeRequestCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<TradeRequestModel>?>((ref) => null);

abstract class _$TradeRequestCreateWidget extends _$TradeRequestCreate {
  static final tradeRequestCreateCallStatusProvider =
      StateProvider.autoDispose<AsyncValue<TradeRequestModel>?>((ref) => null);

  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(TradeRequestModel result) {}
  @protected
  @nonVirtual
  Future<AsyncValue<TradeRequestModel>> call() async {
    final _callStatus = ref.read(tradeRequestCreateCallStatusProvider);
    final _updateCallStatus =
        ref.read(tradeRequestCreateCallStatusProvider.notifier);

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
    ref.invalidate(tradeRequestCreateCallStatusProvider);
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
  Future<TradeRequestModel> submit(TradeRequestCreateParam state);

  /// Update the state of the form.
  /// This allow for more flexible to update specific fields.
  void updateState(
          TradeRequestCreateParam Function(TradeRequestCreateParam state)
              update) =>
      state = update(state);

  /// Update the requesterId field of TradeRequestCreateParam class.
  void updateRequesterId(ProfileId newValue) =>
      state = state.copyWith(requesterId: newValue);

  /// Update the ownerId field of TradeRequestCreateParam class.
  void updateOwnerId(ProfileId newValue) =>
      state = state.copyWith(ownerId: newValue);

  /// Update the bookId field of TradeRequestCreateParam class.
  void updateBookId(BookId newValue) =>
      state = state.copyWith(bookId: newValue);

  /// Update the offeredBookId field of TradeRequestCreateParam class.
  void updateOfferedBookId(BookId? newValue) =>
      state = state.copyWith(offeredBookId: newValue);

  /// Update the message field of TradeRequestCreateParam class.
  void updateMessage(String? newValue) =>
      state = state.copyWith(message: newValue);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestCreateHash() =>
    r'4e5ab92617ee89916da1126b350a0cd5127937c3';

/// See also [TradeRequestCreate].
@ProviderFor(TradeRequestCreate)
final tradeRequestCreateProvider = AutoDisposeNotifierProvider<
    TradeRequestCreate, TradeRequestCreateParam>.internal(
  TradeRequestCreate.new,
  name: r'tradeRequestCreateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tradeRequestCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TradeRequestCreate = AutoDisposeNotifier<TradeRequestCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
