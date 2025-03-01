import 'package:flutter/material.dart';

/// Custom theme extension for book-themed UI elements
class BookThemeExtension extends ThemeExtension<BookThemeExtension> {
  final Color bookCoverOverlayColor;
  final Color statusAvailable;
  final Color statusUnavailable;
  final Color statusPending;
  final Color statusReserved;
  final Color ratingActiveColor;
  final Color ratingInactiveColor;
  final Color tagBackgroundColor;
  final Color tagTextColor;
  final Color searchBarBackgroundColor;
  final Color searchBarIconColor;
  final Color searchBarTextColor;
  final Color dividerColor;
  final Color bottomSheetHandleColor;
  final Color bookmarkColor;
  final Color favoriteColor;
  final Color readingProgressBackgroundColor;
  final Color readingProgressFillColor;
  final Gradient bookCoverGradient;
  final Gradient appBarGradient;

  BookThemeExtension({
    required this.bookCoverOverlayColor,
    required this.statusAvailable,
    required this.statusUnavailable,
    required this.statusPending,
    required this.statusReserved,
    required this.ratingActiveColor,
    required this.ratingInactiveColor,
    required this.tagBackgroundColor,
    required this.tagTextColor,
    required this.searchBarBackgroundColor,
    required this.searchBarIconColor,
    required this.searchBarTextColor,
    required this.dividerColor,
    required this.bottomSheetHandleColor,
    required this.bookmarkColor,
    required this.favoriteColor,
    required this.readingProgressBackgroundColor,
    required this.readingProgressFillColor,
    required this.bookCoverGradient,
    required this.appBarGradient,
  });

  @override
  ThemeExtension<BookThemeExtension> copyWith({
    Color? bookCoverOverlayColor,
    Color? statusAvailable,
    Color? statusUnavailable,
    Color? statusPending,
    Color? statusReserved,
    Color? ratingActiveColor,
    Color? ratingInactiveColor,
    Color? tagBackgroundColor,
    Color? tagTextColor,
    Color? searchBarBackgroundColor,
    Color? searchBarIconColor,
    Color? searchBarTextColor,
    Color? dividerColor,
    Color? bottomSheetHandleColor,
    Color? bookmarkColor,
    Color? favoriteColor,
    Color? readingProgressBackgroundColor,
    Color? readingProgressFillColor,
    Gradient? bookCoverGradient,
    Gradient? appBarGradient,
  }) {
    return BookThemeExtension(
      bookCoverOverlayColor: bookCoverOverlayColor ?? this.bookCoverOverlayColor,
      statusAvailable: statusAvailable ?? this.statusAvailable,
      statusUnavailable: statusUnavailable ?? this.statusUnavailable,
      statusPending: statusPending ?? this.statusPending,
      statusReserved: statusReserved ?? this.statusReserved,
      ratingActiveColor: ratingActiveColor ?? this.ratingActiveColor,
      ratingInactiveColor: ratingInactiveColor ?? this.ratingInactiveColor,
      tagBackgroundColor: tagBackgroundColor ?? this.tagBackgroundColor,
      tagTextColor: tagTextColor ?? this.tagTextColor,
      searchBarBackgroundColor: searchBarBackgroundColor ?? this.searchBarBackgroundColor,
      searchBarIconColor: searchBarIconColor ?? this.searchBarIconColor,
      searchBarTextColor: searchBarTextColor ?? this.searchBarTextColor,
      dividerColor: dividerColor ?? this.dividerColor,
      bottomSheetHandleColor: bottomSheetHandleColor ?? this.bottomSheetHandleColor,
      bookmarkColor: bookmarkColor ?? this.bookmarkColor,
      favoriteColor: favoriteColor ?? this.favoriteColor,
      readingProgressBackgroundColor:
          readingProgressBackgroundColor ?? this.readingProgressBackgroundColor,
      readingProgressFillColor: readingProgressFillColor ?? this.readingProgressFillColor,
      bookCoverGradient: bookCoverGradient ?? this.bookCoverGradient,
      appBarGradient: appBarGradient ?? this.appBarGradient,
    );
  }

  @override
  ThemeExtension<BookThemeExtension> lerp(
    covariant ThemeExtension<BookThemeExtension>? other,
    double t,
  ) {
    if (other is! BookThemeExtension) {
      return this;
    }

    return BookThemeExtension(
      bookCoverOverlayColor: Color.lerp(bookCoverOverlayColor, other.bookCoverOverlayColor, t)!,
      statusAvailable: Color.lerp(statusAvailable, other.statusAvailable, t)!,
      statusUnavailable: Color.lerp(statusUnavailable, other.statusUnavailable, t)!,
      statusPending: Color.lerp(statusPending, other.statusPending, t)!,
      statusReserved: Color.lerp(statusReserved, other.statusReserved, t)!,
      ratingActiveColor: Color.lerp(ratingActiveColor, other.ratingActiveColor, t)!,
      ratingInactiveColor: Color.lerp(ratingInactiveColor, other.ratingInactiveColor, t)!,
      tagBackgroundColor: Color.lerp(tagBackgroundColor, other.tagBackgroundColor, t)!,
      tagTextColor: Color.lerp(tagTextColor, other.tagTextColor, t)!,
      searchBarBackgroundColor:
          Color.lerp(searchBarBackgroundColor, other.searchBarBackgroundColor, t)!,
      searchBarIconColor: Color.lerp(searchBarIconColor, other.searchBarIconColor, t)!,
      searchBarTextColor: Color.lerp(searchBarTextColor, other.searchBarTextColor, t)!,
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
      bottomSheetHandleColor: Color.lerp(bottomSheetHandleColor, other.bottomSheetHandleColor, t)!,
      bookmarkColor: Color.lerp(bookmarkColor, other.bookmarkColor, t)!,
      favoriteColor: Color.lerp(favoriteColor, other.favoriteColor, t)!,
      readingProgressBackgroundColor:
          Color.lerp(readingProgressBackgroundColor, other.readingProgressBackgroundColor, t)!,
      readingProgressFillColor:
          Color.lerp(readingProgressFillColor, other.readingProgressFillColor, t)!,
      bookCoverGradient: Gradient.lerp(bookCoverGradient, other.bookCoverGradient, t)!,
      appBarGradient: Gradient.lerp(appBarGradient, other.appBarGradient, t)!,
    );
  }

  // Light theme extension
  static BookThemeExtension get light => BookThemeExtension(
        bookCoverOverlayColor: Colors.black.withOpacity(0.1),
        statusAvailable: const Color(0xFF4CAF50),
        statusUnavailable: const Color(0xFFE53935),
        statusPending: const Color(0xFFFFA000),
        statusReserved: const Color(0xFF3F51B5),
        ratingActiveColor: const Color(0xFFBEA363),
        ratingInactiveColor: const Color(0xFFE0E0E0),
        tagBackgroundColor: const Color(0xFFF0E6C9),
        tagTextColor: const Color(0xFF424242),
        searchBarBackgroundColor: const Color(0xFFF5F5F5),
        searchBarIconColor: const Color(0xFF757575),
        searchBarTextColor: const Color(0xFF424242),
        dividerColor: const Color(0xFFE0E0E0),
        bottomSheetHandleColor: const Color(0xFFBDBDBD),
        bookmarkColor: const Color(0xFFBEA363),
        favoriteColor: const Color(0xFFE53935),
        readingProgressBackgroundColor: const Color(0xFFE0E0E0),
        readingProgressFillColor: const Color(0xFFBEA363),
        bookCoverGradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black54],
        ),
        appBarGradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFBEA363), Color(0xFF8C7A48)],
        ),
      );

  // Dark theme extension
  static BookThemeExtension get dark => BookThemeExtension(
        bookCoverOverlayColor: Colors.black.withOpacity(0.3),
        statusAvailable: const Color(0xFF66BB6A),
        statusUnavailable: const Color(0xFFEF5350),
        statusPending: const Color(0xFFFFB300),
        statusReserved: const Color(0xFF5C6BC0),
        ratingActiveColor: const Color(0xFFBEA363),
        ratingInactiveColor: const Color(0xFF424242),
        tagBackgroundColor: const Color(0xFF8C7A48),
        tagTextColor: const Color(0xFFE0E0E0),
        searchBarBackgroundColor: const Color(0xFF333333),
        searchBarIconColor: const Color(0xFFBDBDBD),
        searchBarTextColor: const Color(0xFFE0E0E0),
        dividerColor: const Color(0xFF424242),
        bottomSheetHandleColor: const Color(0xFF757575),
        bookmarkColor: const Color(0xFFBEA363),
        favoriteColor: const Color(0xFFEF5350),
        readingProgressBackgroundColor: const Color(0xFF424242),
        readingProgressFillColor: const Color(0xFFBEA363),
        bookCoverGradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black87],
        ),
        appBarGradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFBEA363), Color(0xFF8C7A48)],
        ),
      );
}

// Extension method to easily access the BookThemeExtension from ThemeData
extension BookThemeExtensionGetter on ThemeData {
  BookThemeExtension get bookTheme => extension<BookThemeExtension>() ?? BookThemeExtension.light;
}
