// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'genre_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final genreCreateCallStatusProvider =
    StateProvider.autoDispose<AsyncValue<GenreModel>?>((ref) => null);

abstract class _$GenreCreateWidget extends _$GenreCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(GenreModel result);
  @nonVirtual
  Future<AsyncValue<GenreModel>> call() async {
    final _callStatus = ref.read(genreCreateCallStatusProvider);
    final _updateCallStatus = ref.read(genreCreateCallStatusProvider.notifier);

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
    ref.invalidate(genreCreateCallStatusProvider);
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
  Future<GenreModel> submit(GenreCreateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(GenreCreateParam Function(GenreCreateParam state) update) =>
      state = update(state);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$genreCreateHash() => r'607085cc08c331da526336dabb537d1766ef5895';

/// See also [GenreCreate].
@ProviderFor(GenreCreate)
final genreCreateProvider =
    AutoDisposeNotifierProvider<GenreCreate, GenreCreateParam>.internal(
  GenreCreate.new,
  name: r'genreCreateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$genreCreateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GenreCreate = AutoDisposeNotifier<GenreCreateParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
