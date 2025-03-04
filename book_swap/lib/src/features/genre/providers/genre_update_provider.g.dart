// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'genre_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final genreUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<GenreModel>?, ({GenreId genreId})>((ref, _) => null);

abstract class _$GenreUpdateWidget extends _$GenreUpdate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(GenreModel result);
  @nonVirtual
  Future<AsyncValue<GenreModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus =
        ref.read(genreUpdateCallStatusProvider((genreId: genreId)));
    final _updateCallStatus =
        ref.read(genreUpdateCallStatusProvider((genreId: genreId)).notifier);

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
    ref.invalidate(genreUpdateCallStatusProvider);
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
  Future<GenreModel> submit(GenreUpdateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(GenreUpdateParam Function(GenreUpdateParam state) update) =>
      state = state.whenData(update);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$genreUpdateHash() => r'4020e5a7113749f09421fa2b6728e6f0a50ab4ca';

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

abstract class _$GenreUpdate
    extends BuildlessAutoDisposeAsyncNotifier<GenreUpdateParam> {
  late final GenreId genreId;

  FutureOr<GenreUpdateParam> build(
    GenreId genreId,
  );
}

/// See also [GenreUpdate].
@ProviderFor(GenreUpdate)
const genreUpdateProvider = GenreUpdateFamily();

/// See also [GenreUpdate].
class GenreUpdateFamily extends Family<AsyncValue<GenreUpdateParam>> {
  /// See also [GenreUpdate].
  const GenreUpdateFamily();

  /// See also [GenreUpdate].
  GenreUpdateProvider call(
    GenreId genreId,
  ) {
    return GenreUpdateProvider(
      genreId,
    );
  }

  @override
  GenreUpdateProvider getProviderOverride(
    covariant GenreUpdateProvider provider,
  ) {
    return call(
      provider.genreId,
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
  String? get name => r'genreUpdateProvider';
}

/// See also [GenreUpdate].
class GenreUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GenreUpdate, GenreUpdateParam> {
  /// See also [GenreUpdate].
  GenreUpdateProvider(
    GenreId genreId,
  ) : this._internal(
          () => GenreUpdate()..genreId = genreId,
          from: genreUpdateProvider,
          name: r'genreUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$genreUpdateHash,
          dependencies: GenreUpdateFamily._dependencies,
          allTransitiveDependencies:
              GenreUpdateFamily._allTransitiveDependencies,
          genreId: genreId,
        );

  GenreUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.genreId,
  }) : super.internal();

  final GenreId genreId;

  @override
  FutureOr<GenreUpdateParam> runNotifierBuild(
    covariant GenreUpdate notifier,
  ) {
    return notifier.build(
      genreId,
    );
  }

  @override
  Override overrideWith(GenreUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: GenreUpdateProvider._internal(
        () => create()..genreId = genreId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        genreId: genreId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GenreUpdate, GenreUpdateParam>
      createElement() {
    return _GenreUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenreUpdateProvider && other.genreId == genreId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genreId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GenreUpdateRef on AutoDisposeAsyncNotifierProviderRef<GenreUpdateParam> {
  /// The parameter `genreId` of this provider.
  GenreId get genreId;
}

class _GenreUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GenreUpdate,
        GenreUpdateParam> with GenreUpdateRef {
  _GenreUpdateProviderElement(super.provider);

  @override
  GenreId get genreId => (origin as GenreUpdateProvider).genreId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
