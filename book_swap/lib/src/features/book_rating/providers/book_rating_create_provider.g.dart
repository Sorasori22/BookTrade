// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_rating_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final bookRatingCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<BookRatingModel>?>((ref) => null);

abstract class _$BookRatingCreateWidget extends _$BookRatingCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(BookRatingModel result) {}
  @nonVirtual
  Future<AsyncValue<BookRatingModel>> call() async {
    final _callStatus = ref.read(bookRatingCreateCallStatusProvider);
    final _updateCallStatus =
        ref.read(bookRatingCreateCallStatusProvider.notifier);

// If it's already loading, return loading
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

  /// Update the userId field of BookRatingCreateParam class.
  void updateUserId(ProfileId newValue) =>
      state = state.copyWith(userId: newValue);

  /// Update the bookId field of BookRatingCreateParam class.
  void updateBookId(BookId newValue) =>
      state = state.copyWith(bookId: newValue);

  /// Update the rating field of BookRatingCreateParam class.
  void updateRating(int newValue) => state = state.copyWith(rating: newValue);

  /// Update the comment field of BookRatingCreateParam class.
  void updateComment(String? newValue) =>
      state = state.copyWith(comment: newValue);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookRatingCreateHash() => r'e463159e762503ad100c0d9fbcfa26bc591ac65c';

/// See also [BookRatingCreate].
@ProviderFor(BookRatingCreate)
final bookRatingCreateProvider = AutoDisposeNotifierProvider<BookRatingCreate,
    BookRatingCreateParam>.internal(
  BookRatingCreate.new,
  name: r'bookRatingCreateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bookRatingCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BookRatingCreate = AutoDisposeNotifier<BookRatingCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
