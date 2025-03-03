import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme_extension.dart';

abstract final class AppTheme {
  static const Color goldColor = Color(0xFFB99653);
  static const Color lightGold = Color(0xFFF0E6C9);
  static const Color darkGold = Color(0xFF8C7A48);

  static const Color _primaryLight = goldColor;
  static const Color _primaryDark = goldColor;
  static const Color _secondaryLight = Color(0xFF795548);
  static const Color _secondaryDark = Color(0xFFBCAAA4);
  static const Color _tertiaryLight = Color(0xFF006064);
  static const Color _tertiaryDark = Color(0xFF00BCD4);

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

  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    dividerTheme: DividerThemeData(
      color: BookThemeExtension.light.dividerColor,
      thickness: 1,
    ),
    colorScheme: ColorScheme.light(
      primary: _primaryLight,
      onPrimary: Colors.white,
      primaryContainer: lightGold,
      onPrimaryContainer: Colors.brown.shade900,
      secondary: _secondaryLight,
      onSecondary: Colors.white,
      secondaryContainer: const Color(0xFFD7CCC8),
      onSecondaryContainer: Colors.brown.shade900,
      tertiary: _tertiaryLight,
      onTertiary: Colors.white,
      tertiaryContainer: const Color(0xFFB2EBF2),
      onTertiaryContainer: Colors.teal.shade900,
      error: const Color(0xFFD32F2F),
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
    ),
    cardTheme: const CardTheme(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: _primaryLight, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: _primaryLight, width: 1.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: _primaryLight, width: 2.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: Color(0xFFD32F2F), width: 1.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: Color(0xFFD32F2F), width: 2.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryLight,
        foregroundColor: Colors.white,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _primaryLight,
        side: BorderSide(color: _primaryLight, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _primaryLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: lightGold,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
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

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: _primaryDark,
      onPrimary: Colors.black,
      primaryContainer: darkGold,
      onPrimaryContainer: Colors.white,
      secondary: _secondaryDark,
      onSecondary: Colors.black,
      secondaryContainer: const Color(0xFF5D4037),
      onSecondaryContainer: Colors.white,
      tertiary: _tertiaryDark,
      onTertiary: Colors.black,
      tertiaryContainer: const Color(0xFF004D61),
      onTertiaryContainer: Colors.white,
      error: const Color(0xFFEF5350),
      onError: Colors.black,
      surface: const Color(0xFF121212),
      onSurface: Colors.white,
    ),
    dividerTheme: DividerThemeData(
      color: BookThemeExtension.dark.dividerColor,
      thickness: 1,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: _primaryDark,
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
    ),
    cardTheme: const CardTheme(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: _primaryDark, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: _primaryDark, width: 1.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: _primaryDark, width: 2.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: Color(0xFFEF5350), width: 1.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: Color(0xFFEF5350), width: 2.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryDark,
        foregroundColor: Colors.black,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _primaryDark,
        side: BorderSide(color: _primaryDark, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _primaryDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: darkGold,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
    textTheme: _createTextTheme(ThemeData.dark().textTheme),
    primaryTextTheme: _createTextTheme(ThemeData.dark().primaryTextTheme),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: _primaryDark,
      applyThemeToAll: true,
    ),
    extensions: [
      BookThemeExtension.dark,
    ],
  );
}
