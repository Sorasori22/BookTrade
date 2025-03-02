// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'book_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final bookCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<BookModel>?>((ref) => null);

abstract class _$BookCreateWidget extends _$BookCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(BookModel result) {}
  @nonVirtual
  Future<AsyncValue<BookModel>> call() async {
    final _callStatus = ref.read(bookCreateCallStatusProvider);
    final _updateCallStatus = ref.read(bookCreateCallStatusProvider.notifier);

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
    ref.invalidate(bookCreateCallStatusProvider);
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
  Future<BookModel> submit(BookCreateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(BookCreateParam Function(BookCreateParam state) update) =>
      state = update(state);

  /// Update the ownerId field of BookCreateParam class.
  void updateOwnerId(ProfileId newValue) =>
      state = state.copyWith(ownerId: newValue);

  /// Update the title field of BookCreateParam class.
  void updateTitle(String newValue) => state = state.copyWith(title: newValue);

  /// Update the author field of BookCreateParam class.
  void updateAuthor(String newValue) =>
      state = state.copyWith(author: newValue);

  /// Update the isbn field of BookCreateParam class.
  void updateIsbn(String? newValue) => state = state.copyWith(isbn: newValue);

  /// Update the description field of BookCreateParam class.
  void updateDescription(String? newValue) =>
      state = state.copyWith(description: newValue);

  /// Update the condition field of BookCreateParam class.
  void updateCondition(int newValue) =>
      state = state.copyWith(condition: newValue);

  /// Update the imageUrl field of BookCreateParam class.
  void updateImageUrl(String? newValue) =>
      state = state.copyWith(imageUrl: newValue);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookCreateHash() => r'ee11c62cf9bf591d58e964456a562674c595603c';

/// See also [BookCreate].
@ProviderFor(BookCreate)
final bookCreateProvider =
    AutoDisposeNotifierProvider<BookCreate, BookCreateParam>.internal(
  BookCreate.new,
  name: r'bookCreateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bookCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BookCreate = AutoDisposeNotifier<BookCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
