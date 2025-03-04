// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_rating_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final userRatingUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<UserRatingModel>?, ({UserRatingId userRatingId})>(
        (ref, _) => null);

abstract class _$UserRatingUpdateWidget extends _$UserRatingUpdate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(UserRatingModel result);
  @nonVirtual
  Future<AsyncValue<UserRatingModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus = ref
        .read(userRatingUpdateCallStatusProvider((userRatingId: userRatingId)));
    final _updateCallStatus = ref.read(
        userRatingUpdateCallStatusProvider((userRatingId: userRatingId))
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
    ref.invalidate(userRatingUpdateCallStatusProvider);
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
  Future<UserRatingModel> submit(UserRatingUpdateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          UserRatingUpdateParam Function(UserRatingUpdateParam state) update) =>
      state = state.whenData(update);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRatingUpdateHash() => r'61809e342db32b2a653618d624cd0a4a89e33148';

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

abstract class _$UserRatingUpdate
    extends BuildlessAutoDisposeAsyncNotifier<UserRatingUpdateParam> {
  late final UserRatingId userRatingId;

  FutureOr<UserRatingUpdateParam> build(
    UserRatingId userRatingId,
  );
}

/// See also [UserRatingUpdate].
@ProviderFor(UserRatingUpdate)
const userRatingUpdateProvider = UserRatingUpdateFamily();

/// See also [UserRatingUpdate].
class UserRatingUpdateFamily extends Family<AsyncValue<UserRatingUpdateParam>> {
  /// See also [UserRatingUpdate].
  const UserRatingUpdateFamily();

  /// See also [UserRatingUpdate].
  UserRatingUpdateProvider call(
    UserRatingId userRatingId,
  ) {
    return UserRatingUpdateProvider(
      userRatingId,
    );
  }

  @override
  UserRatingUpdateProvider getProviderOverride(
    covariant UserRatingUpdateProvider provider,
  ) {
    return call(
      provider.userRatingId,
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
  String? get name => r'userRatingUpdateProvider';
}

/// See also [UserRatingUpdate].
class UserRatingUpdateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    UserRatingUpdate, UserRatingUpdateParam> {
  /// See also [UserRatingUpdate].
  UserRatingUpdateProvider(
    UserRatingId userRatingId,
  ) : this._internal(
          () => UserRatingUpdate()..userRatingId = userRatingId,
          from: userRatingUpdateProvider,
          name: r'userRatingUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userRatingUpdateHash,
          dependencies: UserRatingUpdateFamily._dependencies,
          allTransitiveDependencies:
              UserRatingUpdateFamily._allTransitiveDependencies,
          userRatingId: userRatingId,
        );

  UserRatingUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userRatingId,
  }) : super.internal();

  final UserRatingId userRatingId;

  @override
  FutureOr<UserRatingUpdateParam> runNotifierBuild(
    covariant UserRatingUpdate notifier,
  ) {
    return notifier.build(
      userRatingId,
    );
  }

  @override
  Override overrideWith(UserRatingUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserRatingUpdateProvider._internal(
        () => create()..userRatingId = userRatingId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userRatingId: userRatingId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UserRatingUpdate,
      UserRatingUpdateParam> createElement() {
    return _UserRatingUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserRatingUpdateProvider &&
        other.userRatingId == userRatingId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userRatingId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserRatingUpdateRef
    on AutoDisposeAsyncNotifierProviderRef<UserRatingUpdateParam> {
  /// The parameter `userRatingId` of this provider.
  UserRatingId get userRatingId;
}

class _UserRatingUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserRatingUpdate,
        UserRatingUpdateParam> with UserRatingUpdateRef {
  _UserRatingUpdateProviderElement(super.provider);

  @override
  UserRatingId get userRatingId =>
      (origin as UserRatingUpdateProvider).userRatingId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
