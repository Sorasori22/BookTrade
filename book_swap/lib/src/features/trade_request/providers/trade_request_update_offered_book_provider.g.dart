// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_update_offered_book_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestUpdateOfferedBookHash() =>
    r'80e02fd2ab040e79aa43cd8b11177a5426b48b61';

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

abstract class _$TradeRequestUpdateOfferedBook
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final TradeRequestId tradeRequestId;

  ProviderStatus<Unit> build(
    TradeRequestId tradeRequestId,
  );
}

/// See also [TradeRequestUpdateOfferedBook].
@ProviderFor(TradeRequestUpdateOfferedBook)
const tradeRequestUpdateOfferedBookProvider =
    TradeRequestUpdateOfferedBookFamily();

/// See also [TradeRequestUpdateOfferedBook].
class TradeRequestUpdateOfferedBookFamily extends Family<ProviderStatus<Unit>> {
  /// See also [TradeRequestUpdateOfferedBook].
  const TradeRequestUpdateOfferedBookFamily();

  /// See also [TradeRequestUpdateOfferedBook].
  TradeRequestUpdateOfferedBookProvider call(
    TradeRequestId tradeRequestId,
  ) {
    return TradeRequestUpdateOfferedBookProvider(
      tradeRequestId,
    );
  }

  @override
  TradeRequestUpdateOfferedBookProvider getProviderOverride(
    covariant TradeRequestUpdateOfferedBookProvider provider,
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
  String? get name => r'tradeRequestUpdateOfferedBookProvider';
}

/// See also [TradeRequestUpdateOfferedBook].
class TradeRequestUpdateOfferedBookProvider
    extends AutoDisposeNotifierProviderImpl<TradeRequestUpdateOfferedBook,
        ProviderStatus<Unit>> {
  /// See also [TradeRequestUpdateOfferedBook].
  TradeRequestUpdateOfferedBookProvider(
    TradeRequestId tradeRequestId,
  ) : this._internal(
          () =>
              TradeRequestUpdateOfferedBook()..tradeRequestId = tradeRequestId,
          from: tradeRequestUpdateOfferedBookProvider,
          name: r'tradeRequestUpdateOfferedBookProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestUpdateOfferedBookHash,
          dependencies: TradeRequestUpdateOfferedBookFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestUpdateOfferedBookFamily._allTransitiveDependencies,
          tradeRequestId: tradeRequestId,
        );

  TradeRequestUpdateOfferedBookProvider._internal(
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
  ProviderStatus<Unit> runNotifierBuild(
    covariant TradeRequestUpdateOfferedBook notifier,
  ) {
    return notifier.build(
      tradeRequestId,
    );
  }

  @override
  Override overrideWith(TradeRequestUpdateOfferedBook Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestUpdateOfferedBookProvider._internal(
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
  AutoDisposeNotifierProviderElement<TradeRequestUpdateOfferedBook,
      ProviderStatus<Unit>> createElement() {
    return _TradeRequestUpdateOfferedBookProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestUpdateOfferedBookProvider &&
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
mixin TradeRequestUpdateOfferedBookRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `tradeRequestId` of this provider.
  TradeRequestId get tradeRequestId;
}

class _TradeRequestUpdateOfferedBookProviderElement
    extends AutoDisposeNotifierProviderElement<TradeRequestUpdateOfferedBook,
        ProviderStatus<Unit>> with TradeRequestUpdateOfferedBookRef {
  _TradeRequestUpdateOfferedBookProviderElement(super.provider);

  @override
  TradeRequestId get tradeRequestId =>
      (origin as TradeRequestUpdateOfferedBookProvider).tradeRequestId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
