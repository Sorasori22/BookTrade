// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_update_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final userUpdateCallStatusProvider = StateProvider.autoDispose
    .family<AsyncValue<UserModel>?, ({UserId userId})>((ref, _) => null);

abstract class _$UserUpdateWidget extends _$UserUpdate {
  static final userUpdateCallStatusProvider = StateProvider.autoDispose
      .family<AsyncValue<UserModel>?, ({UserId userId})>((ref, _) => null);

  /// Callback for when the form is successfully submitted.
  /// Override this method to handle the result or perform side effects.
  @protected
  void onSuccess(UserModel result) {}
  @protected
  @nonVirtual
  Future<AsyncValue<UserModel>> call() async {
    // Ignore if form is not loaded yet
    if (this.state.isLoading) return const AsyncValue.loading();
    // Cannot submit when form is not loaded yet
    if (this.state.hasValue == false) return const AsyncValue.loading();

    final _callStatus =
        ref.read(userUpdateCallStatusProvider((userId: userId)));
    final _updateCallStatus =
        ref.read(userUpdateCallStatusProvider((userId: userId)).notifier);

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
    ref.invalidate(userUpdateCallStatusProvider);
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
  Future<UserModel> submit(UserUpdateParam state);

  /// Update the state of the form.
  /// This allow for more flexible to update specific fields.
  void updateState(UserUpdateParam Function(UserUpdateParam state) update) =>
      state = state.whenData(update);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userUpdateHash() => r'5f859d498f9a385c5eb7d593392bb40a2ec3fb65';

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

abstract class _$UserUpdate
    extends BuildlessAutoDisposeAsyncNotifier<UserUpdateParam> {
  late final UserId userId;

  FutureOr<UserUpdateParam> build(
    UserId userId,
  );
}

/// See also [UserUpdate].
@ProviderFor(UserUpdate)
const userUpdateProvider = UserUpdateFamily();

/// See also [UserUpdate].
class UserUpdateFamily extends Family<AsyncValue<UserUpdateParam>> {
  /// See also [UserUpdate].
  const UserUpdateFamily();

  /// See also [UserUpdate].
  UserUpdateProvider call(
    UserId userId,
  ) {
    return UserUpdateProvider(
      userId,
    );
  }

  @override
  UserUpdateProvider getProviderOverride(
    covariant UserUpdateProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'userUpdateProvider';
}

/// See also [UserUpdate].
class UserUpdateProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserUpdate, UserUpdateParam> {
  /// See also [UserUpdate].
  UserUpdateProvider(
    UserId userId,
  ) : this._internal(
          () => UserUpdate()..userId = userId,
          from: userUpdateProvider,
          name: r'userUpdateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userUpdateHash,
          dependencies: UserUpdateFamily._dependencies,
          allTransitiveDependencies:
              UserUpdateFamily._allTransitiveDependencies,
          userId: userId,
        );

  UserUpdateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final UserId userId;

  @override
  FutureOr<UserUpdateParam> runNotifierBuild(
    covariant UserUpdate notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(UserUpdate Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserUpdateProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UserUpdate, UserUpdateParam>
      createElement() {
    return _UserUpdateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserUpdateProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserUpdateRef on AutoDisposeAsyncNotifierProviderRef<UserUpdateParam> {
  /// The parameter `userId` of this provider.
  UserId get userId;
}

class _UserUpdateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserUpdate, UserUpdateParam>
    with UserUpdateRef {
  _UserUpdateProviderElement(super.provider);

  @override
  UserId get userId => (origin as UserUpdateProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
