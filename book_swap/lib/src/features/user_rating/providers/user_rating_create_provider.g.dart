// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_rating_create_provider.dart';

// **************************************************************************
// FormProviderGenerator
// **************************************************************************

final userRatingCreateCallStatusProvider = StateProvider.autoDispose.family<
    AsyncValue<UserRatingModel>?,
    ({
      ProfileId ratedProfileId,
      TradeRequestId? tradeRequestId
    })>((ref, _) => null);

abstract class _$UserRatingCreateWidget extends _$UserRatingCreate {
  /// Callback for when the form is successfully submitted.
  /// Override this method and run "dart pub run build_runner build" to make it work. otherwise error will be thrown.
  @protected
  void onSuccess(UserRatingModel result);
  @nonVirtual
  Future<AsyncValue<UserRatingModel>> call() async {
    final _callStatus = ref.read(userRatingCreateCallStatusProvider(
        (ratedProfileId: ratedProfileId, tradeRequestId: tradeRequestId)));
    final _updateCallStatus = ref.read(userRatingCreateCallStatusProvider(
            (ratedProfileId: ratedProfileId, tradeRequestId: tradeRequestId))
        .notifier);

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
    ref.invalidate(userRatingCreateCallStatusProvider);
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
  Future<UserRatingModel> submit(UserRatingCreateParam state);

  /// Update the state of the form.
  /// This allows for more flexible updates to specific fields.
  void updateState(
          UserRatingCreateParam Function(UserRatingCreateParam state) update) =>
      state = update(state);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRatingCreateHash() => r'fdab5c41b0de7a8708bfa6847921844177d2c568';

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

abstract class _$UserRatingCreate
    extends BuildlessAutoDisposeNotifier<UserRatingCreateParam> {
  late final ProfileId ratedProfileId;
  late final TradeRequestId? tradeRequestId;

  UserRatingCreateParam build({
    required ProfileId ratedProfileId,
    TradeRequestId? tradeRequestId,
  });
}

/// See also [UserRatingCreate].
@ProviderFor(UserRatingCreate)
const userRatingCreateProvider = UserRatingCreateFamily();

/// See also [UserRatingCreate].
class UserRatingCreateFamily extends Family<UserRatingCreateParam> {
  /// See also [UserRatingCreate].
  const UserRatingCreateFamily();

  /// See also [UserRatingCreate].
  UserRatingCreateProvider call({
    required ProfileId ratedProfileId,
    TradeRequestId? tradeRequestId,
  }) {
    return UserRatingCreateProvider(
      ratedProfileId: ratedProfileId,
      tradeRequestId: tradeRequestId,
    );
  }

  @override
  UserRatingCreateProvider getProviderOverride(
    covariant UserRatingCreateProvider provider,
  ) {
    return call(
      ratedProfileId: provider.ratedProfileId,
      tradeRequestId: provider.tradeRequestId,
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
  String? get name => r'userRatingCreateProvider';
}

/// See also [UserRatingCreate].
class UserRatingCreateProvider extends AutoDisposeNotifierProviderImpl<
    UserRatingCreate, UserRatingCreateParam> {
  /// See also [UserRatingCreate].
  UserRatingCreateProvider({
    required ProfileId ratedProfileId,
    TradeRequestId? tradeRequestId,
  }) : this._internal(
          () => UserRatingCreate()
            ..ratedProfileId = ratedProfileId
            ..tradeRequestId = tradeRequestId,
          from: userRatingCreateProvider,
          name: r'userRatingCreateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userRatingCreateHash,
          dependencies: UserRatingCreateFamily._dependencies,
          allTransitiveDependencies:
              UserRatingCreateFamily._allTransitiveDependencies,
          ratedProfileId: ratedProfileId,
          tradeRequestId: tradeRequestId,
        );

  UserRatingCreateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ratedProfileId,
    required this.tradeRequestId,
  }) : super.internal();

  final ProfileId ratedProfileId;
  final TradeRequestId? tradeRequestId;

  @override
  UserRatingCreateParam runNotifierBuild(
    covariant UserRatingCreate notifier,
  ) {
    return notifier.build(
      ratedProfileId: ratedProfileId,
      tradeRequestId: tradeRequestId,
    );
  }

  @override
  Override overrideWith(UserRatingCreate Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserRatingCreateProvider._internal(
        () => create()
          ..ratedProfileId = ratedProfileId
          ..tradeRequestId = tradeRequestId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ratedProfileId: ratedProfileId,
        tradeRequestId: tradeRequestId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UserRatingCreate, UserRatingCreateParam>
      createElement() {
    return _UserRatingCreateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserRatingCreateProvider &&
        other.ratedProfileId == ratedProfileId &&
        other.tradeRequestId == tradeRequestId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ratedProfileId.hashCode);
    hash = _SystemHash.combine(hash, tradeRequestId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserRatingCreateRef
    on AutoDisposeNotifierProviderRef<UserRatingCreateParam> {
  /// The parameter `ratedProfileId` of this provider.
  ProfileId get ratedProfileId;

  /// The parameter `tradeRequestId` of this provider.
  TradeRequestId? get tradeRequestId;
}

class _UserRatingCreateProviderElement
    extends AutoDisposeNotifierProviderElement<UserRatingCreate,
        UserRatingCreateParam> with UserRatingCreateRef {
  _UserRatingCreateProviderElement(super.provider);

  @override
  ProfileId get ratedProfileId =>
      (origin as UserRatingCreateProvider).ratedProfileId;
  @override
  TradeRequestId? get tradeRequestId =>
      (origin as UserRatingCreateProvider).tradeRequestId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
