// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'notification_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationDeleteHash() =>
    r'10a07512cb99dede6775f3abb1906775b4c14a46';

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

abstract class _$NotificationDelete
    extends BuildlessAutoDisposeNotifier<ProviderStatus<Unit>> {
  late final NotificationId id;

  ProviderStatus<Unit> build(
    NotificationId id,
  );
}

/// See also [NotificationDelete].
@ProviderFor(NotificationDelete)
const notificationDeleteProvider = NotificationDeleteFamily();

/// See also [NotificationDelete].
class NotificationDeleteFamily extends Family<ProviderStatus<Unit>> {
  /// See also [NotificationDelete].
  const NotificationDeleteFamily();

  /// See also [NotificationDelete].
  NotificationDeleteProvider call(
    NotificationId id,
  ) {
    return NotificationDeleteProvider(
      id,
    );
  }

  @override
  NotificationDeleteProvider getProviderOverride(
    covariant NotificationDeleteProvider provider,
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
  String? get name => r'notificationDeleteProvider';
}

/// See also [NotificationDelete].
class NotificationDeleteProvider extends AutoDisposeNotifierProviderImpl<
    NotificationDelete, ProviderStatus<Unit>> {
  /// See also [NotificationDelete].
  NotificationDeleteProvider(
    NotificationId id,
  ) : this._internal(
          () => NotificationDelete()..id = id,
          from: notificationDeleteProvider,
          name: r'notificationDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationDeleteHash,
          dependencies: NotificationDeleteFamily._dependencies,
          allTransitiveDependencies:
              NotificationDeleteFamily._allTransitiveDependencies,
          id: id,
        );

  NotificationDeleteProvider._internal(
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
    covariant NotificationDelete notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(NotificationDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationDeleteProvider._internal(
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
  AutoDisposeNotifierProviderElement<NotificationDelete, ProviderStatus<Unit>>
      createElement() {
    return _NotificationDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationDeleteProvider && other.id == id;
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
mixin NotificationDeleteRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<Unit>> {
  /// The parameter `id` of this provider.
  NotificationId get id;
}

class _NotificationDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<NotificationDelete,
        ProviderStatus<Unit>> with NotificationDeleteRef {
  _NotificationDeleteProviderElement(super.provider);

  @override
  NotificationId get id => (origin as NotificationDeleteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
