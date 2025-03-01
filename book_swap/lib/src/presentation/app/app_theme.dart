import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme_extension.dart';

/// The [AppTheme] defines light and dark themes for the app.
///
/// Theme setup for FlexColorScheme package v8.
/// Use same major flex_color_scheme package version. If you use a
/// lower minor version, some properties may not be supported.
/// In that case, remove them after copying this theme to your
/// app or upgrade package to version 8.1.0.
///
/// Use in [MaterialApp] like this:
///
/// MaterialApp(
///   theme: AppTheme.light,
///   darkTheme: AppTheme.dark,
///     :
/// );
abstract final class AppTheme {
  // App brand colors
  static const Color goldColor = Color(0xFFB99653);
  static const Color lightGold = Color(0xFFF0E6C9);
  static const Color darkGold = Color(0xFF8C7A48);

  // Custom color scheme for book-themed UI
  static const Color _primaryLight = goldColor; // Gold color
  static const Color _primaryDark = goldColor; // Gold color
  static const Color _secondaryLight = Color(0xFF795548); // Book Brown
  static const Color _secondaryDark = Color(0xFFBCAAA4); // Light Brown
  static const Color _tertiaryLight = Color(0xFF006064); // Deep Teal
  static const Color _tertiaryDark = Color(0xFF00BCD4); // Teal

  // Typography configuration
  static TextTheme _createTextTheme(TextTheme base) {
    return base.copyWith(
      displayLarge: GoogleFonts.merriweather(
        textStyle: base.displayLarge,
        fontWeight: FontWeight.w300,
      ),
      displayMedium: GoogleFonts.merriweather(
        textStyle: base.displayMedium,
        fontWeight: FontWeight.w300,
      ),
      displaySmall: GoogleFonts.merriweather(
        textStyle: base.displaySmall,
        fontWeight: FontWeight.normal,
      ),
      headlineLarge: GoogleFonts.merriweather(
        textStyle: base.headlineLarge,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: GoogleFonts.merriweather(
        textStyle: base.headlineMedium,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: GoogleFonts.merriweather(
        textStyle: base.headlineSmall,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: GoogleFonts.montserrat(
        textStyle: base.titleLarge,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: GoogleFonts.montserrat(
        textStyle: base.titleMedium,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.montserrat(
        textStyle: base.titleSmall,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.roboto(
        textStyle: base.bodyLarge,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFonts.roboto(
        textStyle: base.bodyMedium,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: GoogleFonts.roboto(
        textStyle: base.bodySmall,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: GoogleFonts.montserrat(
        textStyle: base.labelLarge,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.montserrat(
        textStyle: base.labelMedium,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.montserrat(
        textStyle: base.labelSmall,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  // The defined light theme.
  static ThemeData light = FlexThemeData.light(
    scheme: FlexScheme.custom,
    colors: FlexSchemeColor(
      primary: _primaryLight,
      primaryContainer: const Color(0xFFF0E6C9), // Light gold
      secondary: _secondaryLight,
      secondaryContainer: const Color(0xFFD7CCC8), // Light brown
      tertiary: _tertiaryLight,
      tertiaryContainer: const Color(0xFFB2EBF2), // Light teal
      appBarColor: _primaryLight,
      error: const Color(0xFFD32F2F),
    ),
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 9,
    appBarStyle: FlexAppBarStyle.primary,
    appBarOpacity: 0.95,
    appBarElevation: 0.0,
    transparentStatusBar: true,
    tabBarStyle: FlexTabBarStyle.forAppBar,
    useMaterial3: true,
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      useM2StyleDividerInM3: true,
      thinBorderWidth: 1.5,
      defaultRadius: 12.0,
      elevatedButtonSchemeColor: SchemeColor.primary,
      elevatedButtonSecondarySchemeColor: SchemeColor.onPrimary,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      inputDecoratorSchemeColor: SchemeColor.primary,
      inputDecoratorBorderSchemeColor: SchemeColor.primary,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputCursorSchemeColor: SchemeColor.primary,
      inputSelectionSchemeColor: SchemeColor.primaryContainer,
      fabSchemeColor: SchemeColor.primary,
      chipSchemeColor: SchemeColor.primaryContainer,
      cardElevation: 2.0,
      popupMenuElevation: 3.0,
      dialogElevation: 3.0,
      bottomNavigationBarElevation: 3.0,
      navigationBarElevation: 2.0,
      bottomNavigationBarOpacity: 0.95,
      navigationBarOpacity: 0.95,
      navigationBarIndicatorSchemeColor: SchemeColor.primary,
      navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
      navigationBarSelectedIconSchemeColor: SchemeColor.primary,
      navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
      navigationRailSelectedIconSchemeColor: SchemeColor.primary,
      navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailIndicatorSchemeColor: SchemeColor.primary,
      navigationRailUseIndicator: true,
      navigationRailLabelType: NavigationRailLabelType.all,
    ),
    keyColors: const FlexKeyColors(
      useSecondary: true,
      useTertiary: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.roboto().fontFamily,
    textTheme: _createTextTheme(ThemeData.light().textTheme),
    primaryTextTheme: _createTextTheme(ThemeData.light().primaryTextTheme),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: _primaryLight,
      applyThemeToAll: true,
    ),
    extensions: [
      BookThemeExtension.light,
    ],
  );

  // The defined dark theme.
  static ThemeData dark = FlexThemeData.dark(
    scheme: FlexScheme.custom,
    colors: FlexSchemeColor(
      primary: _primaryDark,
      primaryContainer: const Color(0xFF8C7A48), // Darker gold
      secondary: _secondaryDark,
      secondaryContainer: const Color(0xFF5D4037), // Dark brown
      tertiary: _tertiaryDark,
      tertiaryContainer: const Color(0xFF004D61), // Dark teal
      appBarColor: _primaryDark,
      error: const Color(0xFFEF5350),
    ),
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.primary,
    appBarOpacity: 0.90,
    appBarElevation: 0.0,
    transparentStatusBar: true,
    tabBarStyle: FlexTabBarStyle.forAppBar,
    darkIsTrueBlack: false,
    useMaterial3: true,
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnColors: true,
      useM2StyleDividerInM3: true,
      defaultRadius: 12.0,
      thinBorderWidth: 1.5,
      elevatedButtonSchemeColor: SchemeColor.primary,
      elevatedButtonSecondarySchemeColor: SchemeColor.onPrimary,
      outlinedButtonOutlineSchemeColor: SchemeColor.primary,
      inputDecoratorSchemeColor: SchemeColor.primary,
      inputDecoratorBorderSchemeColor: SchemeColor.primary,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputCursorSchemeColor: SchemeColor.primary,
      inputSelectionSchemeColor: SchemeColor.primaryContainer,
      fabSchemeColor: SchemeColor.primary,
      chipSchemeColor: SchemeColor.primaryContainer,
      cardElevation: 2.0,
      popupMenuElevation: 3.0,
      dialogElevation: 3.0,
      bottomNavigationBarElevation: 3.0,
      navigationBarElevation: 2.0,
      bottomNavigationBarOpacity: 0.95,
      navigationBarOpacity: 0.95,
      navigationBarIndicatorSchemeColor: SchemeColor.primary,
      navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
      navigationBarSelectedIconSchemeColor: SchemeColor.primary,
      navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
      navigationRailSelectedIconSchemeColor: SchemeColor.primary,
      navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailIndicatorSchemeColor: SchemeColor.primary,
      navigationRailUseIndicator: true,
      navigationRailLabelType: NavigationRailLabelType.all,
    ),
    keyColors: const FlexKeyColors(
      useSecondary: true,
      useTertiary: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.roboto().fontFamily,
    textTheme: _createTextTheme(ThemeData.dark().textTheme),
    primaryTextTheme: _createTextTheme(ThemeData.dark().primaryTextTheme),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: _primaryLight,
      applyThemeToAll: true,
    ),
    extensions: [
      BookThemeExtension.dark,
    ],
  );
}
