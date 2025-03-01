// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'notification_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final notificationUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<NotificationModel>?, ({NotificationId notificationId})>(
        (ref, _) => null);

abstract class _$NotificationUpdateWidget extends _$NotificationUpdate {
  static final notificationUpdateCallStatusProvider = StateProvider.autoDispose
      .family<AsyncValue<NotificationModel>?,
          ({NotificationId notificationId})>((ref, _) => null);

  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(NotificationModel result) {}
  @protected
  @nonVirtual
  Future<AsyncValue<NotificationModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus = ref.read(
        notificationUpdateCallStatusProvider((notificationId: notificationId)));
    final _updateCallStatus = ref.read(
        notificationUpdateCallStatusProvider((notificationId: notificationId))
            .notifier);

    // If it's already loading, return loading
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
    ref.invalidate(notificationUpdateCallStatusProvider);
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
  Future<NotificationModel> submit(NotificationUpdateParam state);

  /// Update the state of the form.
  /// This allow for more flexible to update specific fields.
  void updateState(
          NotificationUpdateParam Function(NotificationUpdateParam state)
              update) =>
      state = state.whenData(update);

  /// Update the read field of NotificationUpdateParam class.
  void updateRead(bool? newValue) =>
      state = state.whenData((state) => state.copyWith(read: newValue));
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationUpdateHash() =>
    r'c9ce4fc77f1ec12e9829f4f96f460c45f27b315c';

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

abstract class _$NotificationUpdate
    extends BuildlessAutoDisposeAsyncNotifier<NotificationUpdateParam> {
  late final NotificationId notificationId;

  FutureOr<NotificationUpdateParam> build(
    NotificationId notificationId,
  );
}

/// See also [NotificationUpdate].
@ProviderFor(NotificationUpdate)
const notificationUpdateProvider = NotificationUpdateFamily();

/// See also [NotificationUpdate].
class NotificationUpdateFamily
    extends Family<AsyncValue<NotificationUpdateParam>> {
  /// See also [NotificationUpdate].
  const NotificationUpdateFamily();

  /// See also [NotificationUpdate].
  NotificationUpdateProvider call(
    NotificationId notificationId,
  ) {
    return NotificationUpdateProvider(
      notificationId,
    );
  }

  @override
  NotificationUpdateProvider getProviderOverride(
    covariant NotificationUpdateProvider provider,
  ) {
    return call(
      provider.notificationId,
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
  String? get name => r'notificationUpdateProvider';
}

/// See also [NotificationUpdate].
class NotificationUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    NotificationUpdate, NotificationUpdateParam> {
  /// See also [NotificationUpdate].
  NotificationUpdateProvider(
    NotificationId notificationId,
  ) : this._internal(
          () => NotificationUpdate()..notificationId = notificationId,
          from: notificationUpdateProvider,
          name: r'notificationUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationUpdateHash,
          dependencies: NotificationUpdateFamily._dependencies,
          allTransitiveDependencies:
              NotificationUpdateFamily._allTransitiveDependencies,
          notificationId: notificationId,
        );

  NotificationUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.notificationId,
  }) : super.internal();

  final NotificationId notificationId;

  @override
  FutureOr<NotificationUpdateParam> runNotifierBuild(
    covariant NotificationUpdate notifier,
  ) {
    return notifier.build(
      notificationId,
    );
  }

  @override
  Override overrideWith(NotificationUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationUpdateProvider._internal(
        () => create()..notificationId = notificationId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        notificationId: notificationId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<NotificationUpdate,
      NotificationUpdateParam> createElement() {
    return _NotificationUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationUpdateProvider &&
        other.notificationId == notificationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, notificationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NotificationUpdateRef
    on AutoDisposeAsyncNotifierProviderRef<NotificationUpdateParam> {
  /// The parameter `notificationId` of this provider.
  NotificationId get notificationId;
}

class _NotificationUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NotificationUpdate,
        NotificationUpdateParam> with NotificationUpdateRef {
  _NotificationUpdateProviderElement(super.provider);

  @override
  NotificationId get notificationId =>
      (origin as NotificationUpdateProvider).notificationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
