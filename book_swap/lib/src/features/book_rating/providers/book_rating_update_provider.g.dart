// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_rating_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final bookRatingUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<BookRatingModel>?, ({BookRatingId bookRatingId})>(
        (ref, _) => null);

abstract class _$BookRatingUpdateWidget extends _$BookRatingUpdate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(BookRatingModel result);
  @nonVirtual
  Future<AsyncValue<BookRatingModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus = ref
        .read(bookRatingUpdateCallStatusProvider((bookRatingId: bookRatingId)));
    final _updateCallStatus = ref.read(
        bookRatingUpdateCallStatusProvider((bookRatingId: bookRatingId))
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
    ref.invalidate(bookRatingUpdateCallStatusProvider);
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
  Future<BookRatingModel> submit(BookRatingUpdateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          BookRatingUpdateParam Function(BookRatingUpdateParam state) update) =>
      state = state.whenData(update);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookRatingUpdateHash() => r'469566f7c3332a1ad75d33e4b3fbd83ba4de7ede';

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

abstract class _$BookRatingUpdate
    extends BuildlessAutoDisposeAsyncNotifier<BookRatingUpdateParam> {
  late final BookRatingId bookRatingId;

  FutureOr<BookRatingUpdateParam> build(
    BookRatingId bookRatingId,
  );
}

/// See also [BookRatingUpdate].
@ProviderFor(BookRatingUpdate)
const bookRatingUpdateProvider = BookRatingUpdateFamily();

/// See also [BookRatingUpdate].
class BookRatingUpdateFamily extends Family<AsyncValue<BookRatingUpdateParam>> {
  /// See also [BookRatingUpdate].
  const BookRatingUpdateFamily();

  /// See also [BookRatingUpdate].
  BookRatingUpdateProvider call(
    BookRatingId bookRatingId,
  ) {
    return BookRatingUpdateProvider(
      bookRatingId,
    );
  }

  @override
  BookRatingUpdateProvider getProviderOverride(
    covariant BookRatingUpdateProvider provider,
  ) {
    return call(
      provider.bookRatingId,
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
  String? get name => r'bookRatingUpdateProvider';
}

/// See also [BookRatingUpdate].
class BookRatingUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BookRatingUpdate, BookRatingUpdateParam> {
  /// See also [BookRatingUpdate].
  BookRatingUpdateProvider(
    BookRatingId bookRatingId,
  ) : this._internal(
          () => BookRatingUpdate()..bookRatingId = bookRatingId,
          from: bookRatingUpdateProvider,
          name: r'bookRatingUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookRatingUpdateHash,
          dependencies: BookRatingUpdateFamily._dependencies,
          allTransitiveDependencies:
              BookRatingUpdateFamily._allTransitiveDependencies,
          bookRatingId: bookRatingId,
        );

  BookRatingUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookRatingId,
  }) : super.internal();

  final BookRatingId bookRatingId;

  @override
  FutureOr<BookRatingUpdateParam> runNotifierBuild(
    covariant BookRatingUpdate notifier,
  ) {
    return notifier.build(
      bookRatingId,
    );
  }

  @override
  Override overrideWith(BookRatingUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookRatingUpdateProvider._internal(
        () => create()..bookRatingId = bookRatingId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookRatingId: bookRatingId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BookRatingUpdate,
      BookRatingUpdateParam> createElement() {
    return _BookRatingUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookRatingUpdateProvider &&
        other.bookRatingId == bookRatingId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookRatingId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookRatingUpdateRef
    on AutoDisposeAsyncNotifierProviderRef<BookRatingUpdateParam> {
  /// The parameter `bookRatingId` of this provider.
  BookRatingId get bookRatingId;
}

class _BookRatingUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookRatingUpdate,
        BookRatingUpdateParam> with BookRatingUpdateRef {
  _BookRatingUpdateProviderElement(super.provider);

  @override
  BookRatingId get bookRatingId =>
      (origin as BookRatingUpdateProvider).bookRatingId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
