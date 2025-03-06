// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final tradeRequestUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<TradeRequestModel>?, ({TradeRequestId tradeRequestId})>(
        (ref, _) => null);

abstract class _$TradeRequestUpdateWidget extends _$TradeRequestUpdate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(TradeRequestModel result);
  @nonVirtual
  Future<AsyncValue<TradeRequestModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus = ref.read(
        tradeRequestUpdateCallStatusProvider((tradeRequestId: tradeRequestId)));
    final _updateCallStatus = ref.read(
        tradeRequestUpdateCallStatusProvider((tradeRequestId: tradeRequestId))
            .notifier);

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
    ref.invalidate(tradeRequestUpdateCallStatusProvider);
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
  Future<TradeRequestModel> submit(TradeRequestUpdateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          TradeRequestUpdateParam Function(TradeRequestUpdateParam state)
              update) =>
      state = state.whenData(update);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestUpdateHash() =>
    r'ef11625fde2e0216acf513f944b4c103788ee443';

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

abstract class _$TradeRequestUpdate
    extends BuildlessAutoDisposeAsyncNotifier<TradeRequestUpdateParam> {
  late final TradeRequestId tradeRequestId;

  FutureOr<TradeRequestUpdateParam> build(
    TradeRequestId tradeRequestId,
  );
}

/// See also [TradeRequestUpdate].
@ProviderFor(TradeRequestUpdate)
const tradeRequestUpdateProvider = TradeRequestUpdateFamily();

/// See also [TradeRequestUpdate].
class TradeRequestUpdateFamily
    extends Family<AsyncValue<TradeRequestUpdateParam>> {
  /// See also [TradeRequestUpdate].
  const TradeRequestUpdateFamily();

  /// See also [TradeRequestUpdate].
  TradeRequestUpdateProvider call(
    TradeRequestId tradeRequestId,
  ) {
    return TradeRequestUpdateProvider(
      tradeRequestId,
    );
  }

  @override
  TradeRequestUpdateProvider getProviderOverride(
    covariant TradeRequestUpdateProvider provider,
  ) {
    return call(
      provider.tradeRequestId,
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
  String? get name => r'tradeRequestUpdateProvider';
}

/// See also [TradeRequestUpdate].
class TradeRequestUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TradeRequestUpdate, TradeRequestUpdateParam> {
  /// See also [TradeRequestUpdate].
  TradeRequestUpdateProvider(
    TradeRequestId tradeRequestId,
  ) : this._internal(
          () => TradeRequestUpdate()..tradeRequestId = tradeRequestId,
          from: tradeRequestUpdateProvider,
          name: r'tradeRequestUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestUpdateHash,
          dependencies: TradeRequestUpdateFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestUpdateFamily._allTransitiveDependencies,
          tradeRequestId: tradeRequestId,
        );

  TradeRequestUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tradeRequestId,
  }) : super.internal();

  final TradeRequestId tradeRequestId;

  @override
  FutureOr<TradeRequestUpdateParam> runNotifierBuild(
    covariant TradeRequestUpdate notifier,
  ) {
    return notifier.build(
      tradeRequestId,
    );
  }

  @override
  Override overrideWith(TradeRequestUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestUpdateProvider._internal(
        () => create()..tradeRequestId = tradeRequestId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tradeRequestId: tradeRequestId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TradeRequestUpdate,
      TradeRequestUpdateParam> createElement() {
    return _TradeRequestUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestUpdateProvider &&
        other.tradeRequestId == tradeRequestId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tradeRequestId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TradeRequestUpdateRef
    on AutoDisposeAsyncNotifierProviderRef<TradeRequestUpdateParam> {
  /// The parameter `tradeRequestId` of this provider.
  TradeRequestId get tradeRequestId;
}

class _TradeRequestUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TradeRequestUpdate,
        TradeRequestUpdateParam> with TradeRequestUpdateRef {
  _TradeRequestUpdateProviderElement(super.provider);

  @override
  TradeRequestId get tradeRequestId =>
      (origin as TradeRequestUpdateProvider).tradeRequestId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
