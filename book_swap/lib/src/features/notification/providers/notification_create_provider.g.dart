// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'notification_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final notificationCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<NotificationModel>?>((ref) => null);

abstract class _$NotificationCreateWidget extends _$NotificationCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(NotificationModel result);
  @nonVirtual
  Future<AsyncValue<NotificationModel>> call() async {
    final _callStatus = ref.read(notificationCreateCallStatusProvider);
    final _updateCallStatus =
        ref.read(notificationCreateCallStatusProvider.notifier);

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
    ref.invalidate(notificationCreateCallStatusProvider);
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
  Future<NotificationModel> submit(NotificationCreateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          NotificationCreateParam Function(NotificationCreateParam state)
              update) =>
      state = update(state);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationCreateHash() =>
    r'0199fcfe6cc1e63357129198a4106aad734bf223';

/// See also [NotificationCreate].
@ProviderFor(NotificationCreate)
final notificationCreateProvider = AutoDisposeNotifierProvider<
    NotificationCreate, NotificationCreateParam>.internal(
  NotificationCreate.new,
  name: r'notificationCreateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$notificationCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NotificationCreate = AutoDisposeNotifier<NotificationCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
