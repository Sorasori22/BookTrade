// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'file_from_url_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fileFromUrlHash() => r'a819365ac977685eb292436dd4c2cf82e2c40eb7';

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

/// Provide use to get uint8list from url and also cache it
///
/// Copied from [fileFromUrl].
@ProviderFor(fileFromUrl)
const fileFromUrlProvider = FileFromUrlFamily();

/// Provide use to get uint8list from url and also cache it
///
/// Copied from [fileFromUrl].
class FileFromUrlFamily extends Family<AsyncValue<File?>> {
  /// Provide use to get uint8list from url and also cache it
  ///
  /// Copied from [fileFromUrl].
  const FileFromUrlFamily();

  /// Provide use to get uint8list from url and also cache it
  ///
  /// Copied from [fileFromUrl].
  FileFromUrlProvider call(
    String? url,
  ) {
    return FileFromUrlProvider(
      url,
    );
  }

  @override
  FileFromUrlProvider getProviderOverride(
    covariant FileFromUrlProvider provider,
  ) {
    return call(
      provider.url,
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
  String? get name => r'fileFromUrlProvider';
}

/// Provide use to get uint8list from url and also cache it
///
/// Copied from [fileFromUrl].
class FileFromUrlProvider extends AutoDisposeFutureProvider<File?> {
  /// Provide use to get uint8list from url and also cache it
  ///
  /// Copied from [fileFromUrl].
  FileFromUrlProvider(
    String? url,
  ) : this._internal(
          (ref) => fileFromUrl(
            ref as FileFromUrlRef,
            url,
          ),
          from: fileFromUrlProvider,
          name: r'fileFromUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fileFromUrlHash,
          dependencies: FileFromUrlFamily._dependencies,
          allTransitiveDependencies:
              FileFromUrlFamily._allTransitiveDependencies,
          url: url,
        );

  FileFromUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String? url;

  @override
  Override overrideWith(
    FutureOr<File?> Function(FileFromUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FileFromUrlProvider._internal(
        (ref) => create(ref as FileFromUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<File?> createElement() {
    return _FileFromUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FileFromUrlProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FileFromUrlRef on AutoDisposeFutureProviderRef<File?> {
  /// The parameter `url` of this provider.
  String? get url;
}

class _FileFromUrlProviderElement
    extends AutoDisposeFutureProviderElement<File?> with FileFromUrlRef {
  _FileFromUrlProviderElement(super.provider);

  @override
  String? get url => (origin as FileFromUrlProvider).url;
}

String _$tempDirHash() => r'1b5c46fb53f5f3286fb8d4663cf40c775a202bf7';

/// See also [_tempDir].
@ProviderFor(_tempDir)
final _tempDirProvider = AutoDisposeFutureProvider<String>.internal(
  _tempDir,
  name: r'_tempDirProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tempDirHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _TempDirRef = AutoDisposeFutureProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
