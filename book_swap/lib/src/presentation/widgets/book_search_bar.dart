import 'package:flutter/material.dart';

import '../app/app_style_extension.dart';
import '../app/app_theme_extension.dart';

/// A themed search bar for the book app
class BookSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Function(String)? onChanged;
  final VoidCallback? onClear;
  final VoidCallback? onSubmitted;
  final bool autofocus;
  final bool showFilterButton;
  final VoidCallback? onFilterTap;

  const BookSearchBar({
    super.key,
    this.controller,
    this.hintText = 'Search for books, authors...',
    this.onChanged,
    this.onClear,
    this.onSubmitted,
    this.autofocus = false,
    this.showFilterButton = true,
    this.onFilterTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bookTheme = theme.bookTheme;

    return Container(
      height: ASX.searchBarHeight,
      decoration: BoxDecoration(
        color: bookTheme.searchBarBackgroundColor,
        borderRadius: BorderRadius.circular(ASX.searchBarRadius),
        boxShadow: ASX.softShadow,
      ),
      child: Row(
        children: [
          // Search icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Icons.search,
              color: bookTheme.searchBarIconColor,
              size: 20,
            ),
          ),

          // Search input field
          Expanded(
            child: TextField(
              controller: controller,
              autofocus: autofocus,
              style: TextStyle(
                color: bookTheme.searchBarTextColor,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: bookTheme.searchBarTextColor.withOpacity(0.6),
                  fontSize: 16,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onChanged: onChanged,
              onSubmitted: (_) => onSubmitted?.call(),
            ),
          ),

          // Clear button (shows when text is entered)
          if (controller != null && controller!.text.isNotEmpty)
            GestureDetector(
              onTap: () {
                controller!.clear();
                onClear?.call();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Icon(
                  Icons.close,
                  color: bookTheme.searchBarIconColor,
                  size: 20,
                ),
              ),
            ),

          // Filter button
          if (showFilterButton)
            GestureDetector(
              onTap: onFilterTap,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(
                  Icons.tune,
                  color: theme.colorScheme.primary,
                  size: 20,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
