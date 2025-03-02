import 'package:flutter/material.dart';

/// Base class for all themed widgets in the application
///
/// This class provides a consistent way to build widgets that adapt to the
/// application theme. All widgets that need to adapt to the theme should
/// extend this class and implement the [buildWithTheme] method.
abstract class AppBaseWidget extends StatelessWidget {
  /// Creates a base widget
  const AppBaseWidget({super.key});

  /// Builds the widget with the current theme
  ///
  /// This method is called by the [build] method and should be implemented
  /// by subclasses to build the widget with the current theme.
  Widget buildWithTheme(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return buildWithTheme(context);
  }
}

/// A widget that applies a theme to its child
///
/// This widget is useful for applying a specific theme to a subtree of the
/// widget tree. It can be used to override the theme for a specific part of
/// the UI.
class AppThemedWidget extends AppBaseWidget {
  /// Creates a themed widget
  const AppThemedWidget({
    super.key,
    required this.child,
    this.themeData,
    this.themeMode,
    this.darkTheme,
  });

  /// The widget to which the theme will be applied
  final Widget child;

  /// The theme data to apply
  final ThemeData? themeData;

  /// The theme mode to use
  final ThemeMode? themeMode;

  /// The dark theme data to apply
  final ThemeData? darkTheme;

  @override
  Widget buildWithTheme(BuildContext context) {
    // If no theme customization is provided, just return the child
    if (themeData == null && themeMode == null && darkTheme == null) {
      return child;
    }

    // Get the current theme
    final currentTheme = Theme.of(context);

    // Create a new theme with the provided customizations
    return Theme(
      data: themeData ?? currentTheme,
      child: themeMode != null || darkTheme != null
          ? Builder(
              builder: (context) {
                return child;
              },
            )
          : child,
    );
  }
}
