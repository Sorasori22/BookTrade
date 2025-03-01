// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'completed_swap_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$completedSwapDeleteHash() =>
    r'45d2e78081b328acc1cb5129e82fbf8c2a448773';

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

abstract class _$CompletedSwapDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final CompletedSwapId id;

  ProviderStatus<Unit> build(
    CompletedSwapId id,
  );
}

/// See also [CompletedSwapDelete].
@ProviderFor(CompletedSwapDelete)
const completedSwapDeleteProvider = CompletedSwapDeleteFamily();

/// See also [CompletedSwapDelete].
class CompletedSwapDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [CompletedSwapDelete].
  const CompletedSwapDeleteFamily();

  /// See also [CompletedSwapDelete].
  CompletedSwapDeleteProvider call(
    CompletedSwapId id,
  ) {
    return CompletedSwapDeleteProvider(
      id,
    );
  }

  @override
  CompletedSwapDeleteProvider getProviderOverride(
    covariant CompletedSwapDeleteProvider provider,
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
  String? get name => r'completedSwapDeleteProvider';
}

/// See also [CompletedSwapDelete].
class CompletedSwapDeleteProvider extends AutoDisposeNotifierProviderImpl<
    CompletedSwapDelete, ProviderStatus<Unit>> {
  /// See also [CompletedSwapDelete].
  CompletedSwapDeleteProvider(
    CompletedSwapId id,
  ) : this._internal(
          () => CompletedSwapDelete()..id = id,
          from: completedSwapDeleteProvider,
          name: r'completedSwapDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$completedSwapDeleteHash,
          dependencies: CompletedSwapDeleteFamily._dependencies,
          allTransitiveDependencies:
              CompletedSwapDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  CompletedSwapDeleteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final CompletedSwapId id;

  @override
  ProviderStatus<Unit> runNotifierBuild(
    covariant CompletedSwapDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(CompletedSwapDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: CompletedSwapDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<CompletedSwapDelete, ProviderStatus<Unit>>
      createElement() {
    return _CompletedSwapDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompletedSwapDeleteProvider && other.id == id;
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
mixin CompletedSwapDeleteRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  CompletedSwapId get id;
}

class _CompletedSwapDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<CompletedSwapDelete,
        ProviderStatus<Unit>> with CompletedSwapDeleteRef {
  _CompletedSwapDeleteProviderElement(super.provider);

  @override
  CompletedSwapId get id => (origin as CompletedSwapDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
