// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final bookUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<BookModel>?, ({BookId bookId})>((ref, _) => null);

abstract class _$BookUpdateWidget extends _$BookUpdate {
  static final bookUpdateCallStatusProvider = StateProvider.autoDispose
      .family<AsyncValue<BookModel>?, ({BookId bookId})>((ref, _) => null);

  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(BookModel result) {}
  @protected
  @nonVirtual
  Future<AsyncValue<BookModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus =
        ref.read(bookUpdateCallStatusProvider((bookId: bookId)));
    final _updateCallStatus =
        ref.read(bookUpdateCallStatusProvider((bookId: bookId)).notifier);

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
    ref.invalidate(bookUpdateCallStatusProvider);
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
  Future<BookModel> submit(BookUpdateParam state);

  /// Update the state of the form.
  /// This allow for more flexible to update specific fields.
  void updateState(BookUpdateParam Function(BookUpdateParam state) update) =>
      state = state.whenData(update);

  /// Update the title field of BookUpdateParam class.
  void updateTitle(String? newValue) =>
      state = state.whenData((state) => state.copyWith(title: newValue));

  /// Update the author field of BookUpdateParam class.
  void updateAuthor(String? newValue) =>
      state = state.whenData((state) => state.copyWith(author: newValue));

  /// Update the isbn field of BookUpdateParam class.
  void updateIsbn(String? newValue) =>
      state = state.whenData((state) => state.copyWith(isbn: newValue));

  /// Update the description field of BookUpdateParam class.
  void updateDescription(String? newValue) =>
      state = state.whenData((state) => state.copyWith(description: newValue));

  /// Update the condition field of BookUpdateParam class.
  void updateCondition(int? newValue) =>
      state = state.whenData((state) => state.copyWith(condition: newValue));

  /// Update the imageUrl field of BookUpdateParam class.
  void updateImageUrl(String? newValue) =>
      state = state.whenData((state) => state.copyWith(imageUrl: newValue));
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookUpdateHash() => r'd33357c960d5618045d3f168ebb61911c36f642f';

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

abstract class _$BookUpdate
    extends BuildlessAutoDisposeAsyncNotifier<BookUpdateParam> {
  late final BookId bookId;

  FutureOr<BookUpdateParam> build(
    BookId bookId,
  );
}

/// See also [BookUpdate].
@ProviderFor(BookUpdate)
const bookUpdateProvider = BookUpdateFamily();

/// See also [BookUpdate].
class BookUpdateFamily extends Family<AsyncValue<BookUpdateParam>> {
  /// See also [BookUpdate].
  const BookUpdateFamily();

  /// See also [BookUpdate].
  BookUpdateProvider call(
    BookId bookId,
  ) {
    return BookUpdateProvider(
      bookId,
    );
  }

  @override
  BookUpdateProvider getProviderOverride(
    covariant BookUpdateProvider provider,
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
  String? get name => r'bookUpdateProvider';
}

/// See also [BookUpdate].
class BookUpdateProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BookUpdate, BookUpdateParam> {
  /// See also [BookUpdate].
  BookUpdateProvider(
    BookId bookId,
  ) : this._internal(
          () => BookUpdate()..bookId = bookId,
          from: bookUpdateProvider,
          name: r'bookUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookUpdateHash,
          dependencies: BookUpdateFamily._dependencies,
          allTransitiveDependencies:
              BookUpdateFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  BookUpdateProvider._internal(
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
  FutureOr<BookUpdateParam> runNotifierBuild(
    covariant BookUpdate notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(BookUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookUpdateProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BookUpdate, BookUpdateParam>
      createElement() {
    return _BookUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookUpdateProvider && other.bookId == bookId;
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
mixin BookUpdateRef on AutoDisposeAsyncNotifierProviderRef<BookUpdateParam> {
  /// The parameter `bookId` of this provider.
  BookId get bookId;
}

class _BookUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookUpdate, BookUpdateParam>
    with BookUpdateRef {
  _BookUpdateProviderElement(super.provider);

  @override
  BookId get bookId => (origin as BookUpdateProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
