// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_rating_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final bookRatingCreateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<BookRatingModel>?, ({BookId bookId})>((ref, _) => null);

abstract class _$BookRatingCreateWidget extends _$BookRatingCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(BookRatingModel result);
  @nonVirtual
  Future<AsyncValue<BookRatingModel>> call() async {
    final _callStatus =
        ref.read(bookRatingCreateCallStatusProvider((bookId: bookId)));
    final _updateCallStatus =
        ref.read(bookRatingCreateCallStatusProvider((bookId: bookId)).notifier);

    if (_callStatus?.isLoading == true) return const AsyncValue.loading();

    if (_callStatus?.hasValue == true) {
      return _callStatus!;
    }

    _updateCallStatus.state = const AsyncValue.loading();
    final result = await AsyncValue.guard(() async => await submit(this.state));

    _updateCallStatus.state = result;

    if (result.hasValue) {
      onSuccess(result.requireValue);
    }

    return result;
  }

  void invalidateSelf() {
    ref.invalidate(bookRatingCreateCallStatusProvider);
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
  Future<BookRatingModel> submit(BookRatingCreateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          BookRatingCreateParam Function(BookRatingCreateParam state) update) =>
      state = update(state);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookRatingCreateHash() => r'd6d5d5027ed6e7cefa543d73c5c1bc7152dad4ac';

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

abstract class _$BookRatingCreate
    extends BuildlessAutoDisposeNotifier<BookRatingCreateParam> {
  late final BookId bookId;

  BookRatingCreateParam build(
    BookId bookId,
  );
}

/// See also [BookRatingCreate].
@ProviderFor(BookRatingCreate)
const bookRatingCreateProvider = BookRatingCreateFamily();

/// See also [BookRatingCreate].
class BookRatingCreateFamily extends Family<BookRatingCreateParam> {
  /// See also [BookRatingCreate].
  const BookRatingCreateFamily();

  /// See also [BookRatingCreate].
  BookRatingCreateProvider call(
    BookId bookId,
  ) {
    return BookRatingCreateProvider(
      bookId,
    );
  }

  @override
  BookRatingCreateProvider getProviderOverride(
    covariant BookRatingCreateProvider provider,
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
  String? get name => r'bookRatingCreateProvider';
}

/// See also [BookRatingCreate].
class BookRatingCreateProvider extends AutoDisposeNotifierProviderImpl<
    BookRatingCreate, BookRatingCreateParam> {
  /// See also [BookRatingCreate].
  BookRatingCreateProvider(
    BookId bookId,
  ) : this._internal(
          () => BookRatingCreate()..bookId = bookId,
          from: bookRatingCreateProvider,
          name: r'bookRatingCreateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookRatingCreateHash,
          dependencies: BookRatingCreateFamily._dependencies,
          allTransitiveDependencies:
              BookRatingCreateFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  BookRatingCreateProvider._internal(
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
  BookRatingCreateParam runNotifierBuild(
    covariant BookRatingCreate notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(BookRatingCreate Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookRatingCreateProvider._internal(
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
  AutoDisposeNotifierProviderElement<BookRatingCreate, BookRatingCreateParam>
      createElement() {
    return _BookRatingCreateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookRatingCreateProvider && other.bookId == bookId;
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
mixin BookRatingCreateRef
    on AutoDisposeNotifierProviderRef<BookRatingCreateParam> {
  /// The parameter `bookId` of this provider.
  BookId get bookId;
}

class _BookRatingCreateProviderElement
    extends AutoDisposeNotifierProviderElement<BookRatingCreate,
        BookRatingCreateParam> with BookRatingCreateRef {
  _BookRatingCreateProviderElement(super.provider);

  @override
  BookId get bookId => (origin as BookRatingCreateProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
