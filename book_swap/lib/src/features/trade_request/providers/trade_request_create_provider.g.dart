// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final tradeRequestCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<TradeRequestModel>?>((ref) => null);

abstract class _$TradeRequestCreateWidget extends _$TradeRequestCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(TradeRequestModel result);
  @nonVirtual
  Future<AsyncValue<TradeRequestModel>> call() async {
    final _callStatus = ref.read(tradeRequestCreateCallStatusProvider);
    final _updateCallStatus =
        ref.read(tradeRequestCreateCallStatusProvider.notifier);

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
  @protected
  Future<TradeRequestModel> submit(TradeRequestCreateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          TradeRequestCreateParam Function(TradeRequestCreateParam state)
              update) =>
      state = update(state);
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
