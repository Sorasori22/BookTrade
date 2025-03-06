// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'trade_request_create_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tradeRequestCreateHash() =>
    r'82e777c800ed7b9a19e38bd7aa824838fb07294d';

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

abstract class _$TradeRequestCreate
    extends BuildlessAutoDisposeNotifier<ProviderStatus<TradeRequestModel>> {
  late final BookId bookId;

  ProviderStatus<TradeRequestModel> build(
    BookId bookId,
  );
}

/// See also [TradeRequestCreate].
@ProviderFor(TradeRequestCreate)
const tradeRequestCreateProvider = TradeRequestCreateFamily();

/// See also [TradeRequestCreate].
class TradeRequestCreateFamily
    extends Family<ProviderStatus<TradeRequestModel>> {
  /// See also [TradeRequestCreate].
  const TradeRequestCreateFamily();

  /// See also [TradeRequestCreate].
  TradeRequestCreateProvider call(
    BookId bookId,
  ) {
    return TradeRequestCreateProvider(
      bookId,
    );
  }

  @override
  TradeRequestCreateProvider getProviderOverride(
    covariant TradeRequestCreateProvider provider,
  ) {
    return call(
      provider.bookId,
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
  String? get name => r'tradeRequestCreateProvider';
}

/// See also [TradeRequestCreate].
class TradeRequestCreateProvider extends AutoDisposeNotifierProviderImpl<
    TradeRequestCreate, ProviderStatus<TradeRequestModel>> {
  /// See also [TradeRequestCreate].
  TradeRequestCreateProvider(
    BookId bookId,
  ) : this._internal(
          () => TradeRequestCreate()..bookId = bookId,
          from: tradeRequestCreateProvider,
          name: r'tradeRequestCreateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tradeRequestCreateHash,
          dependencies: TradeRequestCreateFamily._dependencies,
          allTransitiveDependencies:
              TradeRequestCreateFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  TradeRequestCreateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
  }) : super.internal();

  final BookId bookId;

  @override
  ProviderStatus<TradeRequestModel> runNotifierBuild(
    covariant TradeRequestCreate notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(TradeRequestCreate Function() create) {
    return ProviderOverride(
      origin: this,
      override: TradeRequestCreateProvider._internal(
        () => create()..bookId = bookId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<TradeRequestCreate,
      ProviderStatus<TradeRequestModel>> createElement() {
    return _TradeRequestCreateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TradeRequestCreateProvider && other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TradeRequestCreateRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<TradeRequestModel>> {
  /// The parameter `bookId` of this provider.
  BookId get bookId;
}

class _TradeRequestCreateProviderElement
    extends AutoDisposeNotifierProviderElement<TradeRequestCreate,
        ProviderStatus<TradeRequestModel>> with TradeRequestCreateRef {
  _TradeRequestCreateProviderElement(super.provider);

  @override
  BookId get bookId => (origin as TradeRequestCreateProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
