// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_genre_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final bookGenreUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<BookGenreModel>?, ({BookGenreId bookGenreId})>(
        (ref, _) => null);

abstract class _$BookGenreUpdateWidget extends _$BookGenreUpdate {
  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(BookGenreModel result) {}
  @nonVirtual
  Future<AsyncValue<BookGenreModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus =
        ref.read(bookGenreUpdateCallStatusProvider((bookGenreId: bookGenreId)));
    final _updateCallStatus = ref.read(
        bookGenreUpdateCallStatusProvider((bookGenreId: bookGenreId)).notifier);

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
    ref.invalidate(bookGenreUpdateCallStatusProvider);
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
  Future<BookGenreModel> submit(BookGenreUpdateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          BookGenreUpdateParam Function(BookGenreUpdateParam state) update) =>
      state = state.whenData(update);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookGenreUpdateHash() => r'5d80cf7b2b6a614a46c545297a0059a7dc36cfad';

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

abstract class _$BookGenreUpdate
    extends BuildlessAutoDisposeAsyncNotifier<BookGenreUpdateParam> {
  late final BookGenreId bookGenreId;

  FutureOr<BookGenreUpdateParam> build(
    BookGenreId bookGenreId,
  );
}

/// See also [BookGenreUpdate].
@ProviderFor(BookGenreUpdate)
const bookGenreUpdateProvider = BookGenreUpdateFamily();

/// See also [BookGenreUpdate].
class BookGenreUpdateFamily extends Family<AsyncValue<BookGenreUpdateParam>> {
  /// See also [BookGenreUpdate].
  const BookGenreUpdateFamily();

  /// See also [BookGenreUpdate].
  BookGenreUpdateProvider call(
    BookGenreId bookGenreId,
  ) {
    return BookGenreUpdateProvider(
      bookGenreId,
    );
  }

  @override
  BookGenreUpdateProvider getProviderOverride(
    covariant BookGenreUpdateProvider provider,
  ) {
    return call(
      provider.bookGenreId,
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
  String? get name => r'bookGenreUpdateProvider';
}

/// See also [BookGenreUpdate].
class BookGenreUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BookGenreUpdate, BookGenreUpdateParam> {
  /// See also [BookGenreUpdate].
  BookGenreUpdateProvider(
    BookGenreId bookGenreId,
  ) : this._internal(
          () => BookGenreUpdate()..bookGenreId = bookGenreId,
          from: bookGenreUpdateProvider,
          name: r'bookGenreUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookGenreUpdateHash,
          dependencies: BookGenreUpdateFamily._dependencies,
          allTransitiveDependencies:
              BookGenreUpdateFamily._allTransitiveDependencies,
          bookGenreId: bookGenreId,
        );

  BookGenreUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookGenreId,
  }) : super.internal();

  final BookGenreId bookGenreId;

  @override
  FutureOr<BookGenreUpdateParam> runNotifierBuild(
    covariant BookGenreUpdate notifier,
  ) {
    return notifier.build(
      bookGenreId,
    );
  }

  @override
  Override overrideWith(BookGenreUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookGenreUpdateProvider._internal(
        () => create()..bookGenreId = bookGenreId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookGenreId: bookGenreId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BookGenreUpdate, BookGenreUpdateParam>
      createElement() {
    return _BookGenreUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookGenreUpdateProvider && other.bookGenreId == bookGenreId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookGenreId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookGenreUpdateRef
    on AutoDisposeAsyncNotifierProviderRef<BookGenreUpdateParam> {
  /// The parameter `bookGenreId` of this provider.
  BookGenreId get bookGenreId;
}

class _BookGenreUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookGenreUpdate,
        BookGenreUpdateParam> with BookGenreUpdateRef {
  _BookGenreUpdateProviderElement(super.provider);

  @override
  BookGenreId get bookGenreId =>
      (origin as BookGenreUpdateProvider).bookGenreId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
