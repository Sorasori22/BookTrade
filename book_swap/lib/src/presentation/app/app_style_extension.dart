import 'package:flutter/material.dart';

/// Extension to the app style with book-themed design elements
class ASX {
  const ASX._();

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
  static const double buttonElevation = 1.0;
  static const double buttonHeight = 48.0;
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
          color: Colors.black.withOpacity(0.05),
          blurRadius: 6.0,
          offset: const Offset(0, 3),
        ),
      ];

  static List<BoxShadow> get mediumShadow => [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10.0,
          offset: const Offset(0, 5),
        ),
      ];

  static List<BoxShadow> get bookShadow => [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
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
}
