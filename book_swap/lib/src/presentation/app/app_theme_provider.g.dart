// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'app_theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lightThemeHash() => r'e831759e5bda627e74c30d27c7ff299a38f7294e';

/// See also [lightTheme].
@ProviderFor(lightTheme)
final lightThemeProvider = AutoDisposeProvider<ThemeData>.internal(
  lightTheme,
  name: r'lightThemeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$lightThemeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LightThemeRef = AutoDisposeProviderRef<ThemeData>;
String _$darkThemeHash() => r'de495df328aa639f862ca7bc7c1d8512e8475059';

/// See also [darkTheme].
@ProviderFor(darkTheme)
final darkThemeProvider = AutoDisposeProvider<ThemeData>.internal(
  darkTheme,
  name: r'darkThemeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$darkThemeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DarkThemeRef = AutoDisposeProviderRef<ThemeData>;
String _$textScaleHash() => r'de829619e7e27a3aafa2c02fda73fc3949433fbc';

/// See also [TextScale].
@ProviderFor(TextScale)
final textScaleProvider =
    AsyncNotifierProvider<TextScale, TextScaleValue>.internal(
  TextScale.new,
  name: r'textScaleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$textScaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TextScale = AsyncNotifier<TextScaleValue>;
String _$appThemeModeHash() => r'648b97b33d4411bec0a636fa8a9fe73c78a4c4d7';

/// See also [AppThemeMode].
@ProviderFor(AppThemeMode)
final appThemeModeProvider =
    AsyncNotifierProvider<AppThemeMode, ThemeMode>.internal(
  AppThemeMode.new,
  name: r'appThemeModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appThemeModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppThemeMode = AsyncNotifier<ThemeMode>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
