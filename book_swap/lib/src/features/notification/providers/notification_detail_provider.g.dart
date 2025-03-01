// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'notification_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationDetailHash() =>
    r'dd10f8b2f406b682f92e76caeab370aa40b3fcc6';

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

abstract class _$NotificationDetail
    extends BuildlessAutoDisposeAsyncNotifier<NotificationModel> {
  late final NotificationId id;

  FutureOr<NotificationModel> build(
    NotificationId id,
  );
}

/// See also [NotificationDetail].
@ProviderFor(NotificationDetail)
const notificationDetailProvider = NotificationDetailFamily();

/// See also [NotificationDetail].
class NotificationDetailFamily extends Family<AsyncValue<NotificationModel>> {
  /// See also [NotificationDetail].
  const NotificationDetailFamily();

  /// See also [NotificationDetail].
  NotificationDetailProvider call(
    NotificationId id,
  ) {
    return NotificationDetailProvider(
      id,
    );
  }

  @override
  NotificationDetailProvider getProviderOverride(
    covariant NotificationDetailProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'notificationDetailProvider';
}

/// See also [NotificationDetail].
class NotificationDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    NotificationDetail, NotificationModel> {
  /// See also [NotificationDetail].
  NotificationDetailProvider(
    NotificationId id,
  ) : this._internal(
          () => NotificationDetail()..id = id,
          from: notificationDetailProvider,
          name: r'notificationDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationDetailHash,
          dependencies: NotificationDetailFamily._dependencies,
          allTransitiveDependencies:
              NotificationDetailFamily._allTransitiveDependencies,
          id: id,
        );

  NotificationDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final NotificationId id;

  @override
  FutureOr<NotificationModel> runNotifierBuild(
    covariant NotificationDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(NotificationDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationDetailProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<NotificationDetail, NotificationModel>
      createElement() {
    return _NotificationDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NotificationDetailRef
    on AutoDisposeAsyncNotifierProviderRef<NotificationModel> {
  /// The parameter `id` of this provider.
  NotificationId get id;
}

class _NotificationDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NotificationDetail,
        NotificationModel> with NotificationDetailRef {
  _NotificationDetailProviderElement(super.provider);

  @override
  NotificationId get id => (origin as NotificationDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
