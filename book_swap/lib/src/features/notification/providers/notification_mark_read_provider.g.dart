// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'notification_mark_read_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationMarkReadHash() =>
    r'92088798ce01a31ab50af5dc918b2801e4e780dd';

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

abstract class _$NotificationMarkRead
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final NotificationId id;

  ProviderStatus<Unit> build(
    NotificationId id,
  );
}

/// See also [NotificationMarkRead].
@ProviderFor(NotificationMarkRead)
const notificationMarkReadProvider = NotificationMarkReadFamily();

/// See also [NotificationMarkRead].
class NotificationMarkReadFamily extends Family<ProviderStatus<Unit>> {
  /// See also [NotificationMarkRead].
  const NotificationMarkReadFamily();

  /// See also [NotificationMarkRead].
  NotificationMarkReadProvider call(
    NotificationId id,
  ) {
    return NotificationMarkReadProvider(
      id,
    );
  }

  @override
  NotificationMarkReadProvider getProviderOverride(
    covariant NotificationMarkReadProvider provider,
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
  String? get name => r'notificationMarkReadProvider';
}

/// See also [NotificationMarkRead].
class NotificationMarkReadProvider extends AutoDisposeNotifierProviderImpl<
    NotificationMarkRead, ProviderStatus<Unit>> {
  /// See also [NotificationMarkRead].
  NotificationMarkReadProvider(
    NotificationId id,
  ) : this._internal(
          () => NotificationMarkRead()..id = id,
          from: notificationMarkReadProvider,
          name: r'notificationMarkReadProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationMarkReadHash,
          dependencies: NotificationMarkReadFamily._dependencies,
          allTransitiveDependencies:
              NotificationMarkReadFamily._allTransitiveDependencies,
          id: id,
        );

  NotificationMarkReadProvider._internal(
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
  ProviderStatus<Unit> runNotifierBuild(
    covariant NotificationMarkRead notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(NotificationMarkRead Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationMarkReadProvider._internal(
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
  AutoDisposeNotifierProviderElement<NotificationMarkRead, ProviderStatus<Unit>>
      createElement() {
    return _NotificationMarkReadProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationMarkReadProvider && other.id == id;
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
mixin NotificationMarkReadRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  NotificationId get id;
}

class _NotificationMarkReadProviderElement
    extends AutoDisposeNotifierProviderElement<NotificationMarkRead,
        ProviderStatus<Unit>> with NotificationMarkReadRef {
  _NotificationMarkReadProviderElement(super.provider);

  @override
  NotificationId get id => (origin as NotificationMarkReadProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
