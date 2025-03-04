// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'completed_swap_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final completedSwapUpdateCallStatusProvider = StateProvider.autoDispose.family<
    AsyncValue<CompletedSwapModel>?,
    ({CompletedSwapId completedSwapId})>((ref, _) => null);

abstract class _$CompletedSwapUpdateWidget extends _$CompletedSwapUpdate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(CompletedSwapModel result);
  @nonVirtual
  Future<AsyncValue<CompletedSwapModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus = ref.read(completedSwapUpdateCallStatusProvider(
        (completedSwapId: completedSwapId)));
    final _updateCallStatus = ref.read(completedSwapUpdateCallStatusProvider(
        (completedSwapId: completedSwapId)).notifier);

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
    ref.invalidate(completedSwapUpdateCallStatusProvider);
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
  Future<CompletedSwapModel> submit(CompletedSwapUpdateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          CompletedSwapUpdateParam Function(CompletedSwapUpdateParam state)
              update) =>
      state = state.whenData(update);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$completedSwapUpdateHash() =>
    r'612f0c7a34a23504139d1e2a2ee07d32b96752ea';

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

abstract class _$CompletedSwapUpdate
    extends BuildlessAutoDisposeAsyncNotifier<CompletedSwapUpdateParam> {
  late final CompletedSwapId completedSwapId;

  FutureOr<CompletedSwapUpdateParam> build(
    CompletedSwapId completedSwapId,
  );
}

/// See also [CompletedSwapUpdate].
@ProviderFor(CompletedSwapUpdate)
const completedSwapUpdateProvider = CompletedSwapUpdateFamily();

/// See also [CompletedSwapUpdate].
class CompletedSwapUpdateFamily
    extends Family<AsyncValue<CompletedSwapUpdateParam>> {
  /// See also [CompletedSwapUpdate].
  const CompletedSwapUpdateFamily();

  /// See also [CompletedSwapUpdate].
  CompletedSwapUpdateProvider call(
    CompletedSwapId completedSwapId,
  ) {
    return CompletedSwapUpdateProvider(
      completedSwapId,
    );
  }

  @override
  CompletedSwapUpdateProvider getProviderOverride(
    covariant CompletedSwapUpdateProvider provider,
  ) {
    return call(
      provider.completedSwapId,
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
  String? get name => r'completedSwapUpdateProvider';
}

/// See also [CompletedSwapUpdate].
class CompletedSwapUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    CompletedSwapUpdate, CompletedSwapUpdateParam> {
  /// See also [CompletedSwapUpdate].
  CompletedSwapUpdateProvider(
    CompletedSwapId completedSwapId,
  ) : this._internal(
          () => CompletedSwapUpdate()..completedSwapId = completedSwapId,
          from: completedSwapUpdateProvider,
          name: r'completedSwapUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$completedSwapUpdateHash,
          dependencies: CompletedSwapUpdateFamily._dependencies,
          allTransitiveDependencies:
              CompletedSwapUpdateFamily._allTransitiveDependencies,
          completedSwapId: completedSwapId,
        );

  CompletedSwapUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.completedSwapId,
  }) : super.internal();

  final CompletedSwapId completedSwapId;

  @override
  FutureOr<CompletedSwapUpdateParam> runNotifierBuild(
    covariant CompletedSwapUpdate notifier,
  ) {
    return notifier.build(
      completedSwapId,
    );
  }

  @override
  Override overrideWith(CompletedSwapUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: CompletedSwapUpdateProvider._internal(
        () => create()..completedSwapId = completedSwapId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        completedSwapId: completedSwapId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CompletedSwapUpdate,
      CompletedSwapUpdateParam> createElement() {
    return _CompletedSwapUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompletedSwapUpdateProvider &&
        other.completedSwapId == completedSwapId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, completedSwapId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CompletedSwapUpdateRef
    on AutoDisposeAsyncNotifierProviderRef<CompletedSwapUpdateParam> {
  /// The parameter `completedSwapId` of this provider.
  CompletedSwapId get completedSwapId;
}

class _CompletedSwapUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CompletedSwapUpdate,
        CompletedSwapUpdateParam> with CompletedSwapUpdateRef {
  _CompletedSwapUpdateProviderElement(super.provider);

  @override
  CompletedSwapId get completedSwapId =>
      (origin as CompletedSwapUpdateProvider).completedSwapId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
