import 'package:flutter/material.dart';

class AS {
  const AS._();

  static const double mobileBreakpoint = 480;
  static const double tabletBreakpoint = 800;
  static const double desktopBreakpoint = 1000;

  static const double sidePadding = 16;
  static const double dialogSideInsetPadding = 24;

  static const double paddingXS = 4.0;
  static const double paddingS = 8.0;
  static const double paddingM = 16.0;
  static const double paddingL = 24.0;
  static const double paddingXL = 32.0;

  static const double radiusXS = 4.0;
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXL = 24.0;

  static const Duration animationFast = Duration(milliseconds: 150);
  static const Duration animationMedium = Duration(milliseconds: 300);
  static const Duration animationSlow = Duration(milliseconds: 500);

  // Book-specific styling
  static const double bookCoverRadius = 8.0;
  static const double bookCoverAspectRatio = 0.67; // Standard book cover ratio
  static const double bookCoverElevation = 4.0;
  static const double bookDetailImageHeight = 200.0;

  // Card styling
  static const double cardRadius = 12.0;
  static const double cardElevation = 2.0;
  static const double cardBorderWidth = 0.5;

  // Button styling
  static const double buttonRadius = 12.0;
  static const double buttonElevation = 0.5;
  static const double buttonHeightS = 32.0;
  static const double buttonHeightM = 42.0;
  static const double buttonHeightL = 48.0;
  static const double iconButtonSize = 48.0;

  // Input styling
  static const double inputRadius = 12.0;
  static const double inputBorderWidth = 1.5;

  // Avatar styling
  static const double avatarSizeSmall = 32.0;
  static const double avatarSizeMedium = 48.0;
  static const double avatarSizeLarge = 64.0;
  static const double avatarBorderWidth = 2.0;

  // Shadows
  static List<BoxShadow> get softShadow => [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 6.0,
          offset: const Offset(0, 3),
        ),
      ];

  static List<BoxShadow> get mediumShadow => [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 10.0,
          offset: const Offset(0, 5),
        ),
      ];

  static List<BoxShadow> get bookShadow => [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.2),
          blurRadius: 8.0,
          offset: const Offset(2, 3),
        ),
      ];

  // Animation durations
  static const Duration shortAnimation = Duration(milliseconds: 150);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);

  // Book status indicators
  static const double statusIndicatorSize = 12.0;
  static const double statusIndicatorBorderWidth = 1.5;

  // Book list styling
  static const double bookListItemHeight = 120.0;
  static const double bookGridItemHeight = 220.0;
  static const double bookGridItemWidth = 140.0;
  static const double bookGridSpacing = 16.0;

  // Rating styling
  static const double ratingStarSize = 20.0;
  static const double ratingBarHeight = 24.0;

  // Search bar styling
  static const double searchBarHeight = 48.0;
  static const double searchBarRadius = 24.0;

  // Badge styling
  static const double badgeSize = 20.0;
  static const double badgeBorderWidth = 1.5;
  static const double badgeTextSize = 10.0;

  // Divider styling
  static const double dividerThickness = 1.0;
  static const double dividerIndent = 16.0;

  // Bottom sheet styling
  static const double bottomSheetRadius = 16.0;
  static const double bottomSheetMinHeight = 200.0;
  static const double bottomSheetHandleWidth = 40.0;
  static const double bottomSheetHandleHeight = 4.0;
  static const double bottomSheetHandleRadius = 2.0;

  static const wGap12 = SizedBox(width: 12, height: 0);
  static const wGap16 = SizedBox(width: 16, height: 0);
  static const wGap20 = SizedBox(width: 20, height: 0);
  static const wGap24 = SizedBox(width: 24, height: 0);
  static const wGap28 = SizedBox(width: 28, height: 0);
  static const wGap32 = SizedBox(width: 32, height: 0);
  static const wGap36 = SizedBox(width: 36, height: 0);
  static const wGap40 = SizedBox(width: 40, height: 0);
  static const wGap44 = SizedBox(width: 44, height: 0);
  static const wGap48 = SizedBox(width: 48, height: 0);
  static const wGap4 = SizedBox(width: 4, height: 0);
  static const wGap8 = SizedBox(width: 8, height: 0);
  static const hGap12 = SizedBox(width: 0, height: 12);
  static const hGap16 = SizedBox(width: 0, height: 16);
  static const hGap20 = SizedBox(width: 0, height: 20);
  static const hGap24 = SizedBox(width: 0, height: 24);
  static const hGap28 = SizedBox(width: 0, height: 28);
  static const hGap32 = SizedBox(width: 0, height: 32);
  static const hGap36 = SizedBox(width: 0, height: 36);
  static const hGap40 = SizedBox(width: 0, height: 40);
  static const hGap44 = SizedBox(width: 0, height: 44);
  static const hGap48 = SizedBox(width: 0, height: 48);
  static const hGap4 = SizedBox(width: 0, height: 4);
  static const hGap8 = SizedBox(width: 0, height: 8);
}
