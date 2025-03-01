// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'completed_swap_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$completedSwapDetailHash() =>
    r'2e8885376bf266eb3b27b4032955a78b418c70c3';

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

abstract class _$CompletedSwapDetail
    extends BuildlessAutoDisposeAsyncNotifier<CompletedSwapModel> {
  late final CompletedSwapId id;

  FutureOr<CompletedSwapModel> build(
    CompletedSwapId id,
  );
}

/// See also [CompletedSwapDetail].
@ProviderFor(CompletedSwapDetail)
const completedSwapDetailProvider = CompletedSwapDetailFamily();

/// See also [CompletedSwapDetail].
class CompletedSwapDetailFamily extends Family<AsyncValue<CompletedSwapModel>> {
  /// See also [CompletedSwapDetail].
  const CompletedSwapDetailFamily();

  /// See also [CompletedSwapDetail].
  CompletedSwapDetailProvider call(
    CompletedSwapId id,
  ) {
    return CompletedSwapDetailProvider(
      id,
    );
  }

  @override
  CompletedSwapDetailProvider getProviderOverride(
    covariant CompletedSwapDetailProvider provider,
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
  String? get name => r'completedSwapDetailProvider';
}

/// See also [CompletedSwapDetail].
class CompletedSwapDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    CompletedSwapDetail, CompletedSwapModel> {
  /// See also [CompletedSwapDetail].
  CompletedSwapDetailProvider(
    CompletedSwapId id,
  ) : this._internal(
          () => CompletedSwapDetail()..id = id,
          from: completedSwapDetailProvider,
          name: r'completedSwapDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$completedSwapDetailHash,
          dependencies: CompletedSwapDetailFamily._dependencies,
          allTransitiveDependencies:
              CompletedSwapDetailFamily._allTransitiveDependencies,
          id: id,
        );

  CompletedSwapDetailProvider._internal(
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
  FutureOr<CompletedSwapModel> runNotifierBuild(
    covariant CompletedSwapDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(CompletedSwapDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: CompletedSwapDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<CompletedSwapDetail,
      CompletedSwapModel> createElement() {
    return _CompletedSwapDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompletedSwapDetailProvider && other.id == id;
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
mixin CompletedSwapDetailRef
    on AutoDisposeAsyncNotifierProviderRef<CompletedSwapModel> {
  /// The parameter `id` of this provider.
  CompletedSwapId get id;
}

class _CompletedSwapDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CompletedSwapDetail,
        CompletedSwapModel> with CompletedSwapDetailRef {
  _CompletedSwapDetailProviderElement(super.provider);

  @override
  CompletedSwapId get id => (origin as CompletedSwapDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
