# Book Swap App Theme

This directory contains the theme configuration for the Book Swap application. The theme is designed to provide a consistent, book-centric visual experience across the app.

## Theme Structure

The theme system consists of several components:

1. **AppTheme** (`app_theme.dart`): The main theme class that defines light and dark themes using FlexColorScheme.
2. **BookThemeExtension** (`app_theme_extension.dart`): A ThemeExtension that provides additional book-specific theme values.
3. **AS** (`app_style.dart`): A utility class with spacing and sizing constants.
4. **ASX** (`app_style_extension.dart`): Additional book-specific styling constants.

## Color Palette

### Light Theme
- **Primary**: Deep Teal (#006064) - A calming, focused color for primary actions
- **Secondary**: Warm Amber (#FF8F00) - For accents and highlights
- **Tertiary**: Book Brown (#795548) - For tertiary elements
- **Background**: Soft Paper (#F5F5F5) - Light, easy on the eyes
- **Surface**: White (#FFFFFF) - Clean surfaces for content

### Dark Theme
- **Primary**: Teal (#00BCD4) - Vibrant but easy on the eyes in dark mode
- **Secondary**: Amber (#FFB300) - Warm accent that stands out in dark mode
- **Tertiary**: Light Brown (#BCAAA4) - For tertiary elements
- **Background**: Deep Navy (#121212) - Dark but not pure black
- **Surface**: Dark Gray (#1E1E1E) - Slightly lighter than background

## Typography

The theme uses a combination of fonts:
- **Headings**: Merriweather (serif) - For a book-like feel
- **Body**: Roboto (sans-serif) - For readability
- **Accent**: Montserrat (sans-serif) - For UI elements

## Using the Theme

### Basic Theme Usage

The theme is automatically applied to the entire app through the MaterialApp:

```dart
MaterialApp(
  theme: AppTheme.light,
  darkTheme: AppTheme.dark,
  themeMode: themeMode,
  // ...
)
```

### Accessing Theme Values

Access standard theme values through the Theme:

```dart
final theme = Theme.of(context);
final primaryColor = theme.colorScheme.primary;
final bodyTextStyle = theme.textTheme.bodyMedium;
```

### Using Book-Specific Theme Extensions

Access book-specific theme values through the extension:

```dart
final theme = Theme.of(context);
final bookTheme = theme.bookTheme;

// Now you can use book-specific values
final statusAvailableColor = bookTheme.statusAvailable;
final bookCoverGradient = bookTheme.bookCoverGradient;
```

### Using Style Constants

Use the style constants for consistent spacing and sizing:

```dart
// Standard spacing
const padding = AS.sidePadding;
const gap = AS.hGap16;

// Book-specific styling
final cardRadius = ASX.cardRadius;
final bookCoverRadius = ASX.bookCoverRadius;
final bookShadow = ASX.bookShadow;
```

## Sample Widgets

The `widgets` directory contains sample components that demonstrate how to use the theme:

1. **BookCard**: A card that displays a book with cover, title, author, status, and rating.
2. **BookSearchBar**: A themed search bar for searching books.

## Customizing the Theme

To modify the theme:

1. Update color values in `AppTheme` class
2. Modify typography in the `_createTextTheme` method
3. Adjust book-specific values in `BookThemeExtension`
4. Update sizing constants in `ASX` class

## Dependencies

This theme implementation requires:

- `flex_color_scheme: ^7.0.0` or higher
- `google_fonts: ^5.0.0` or higher

Make sure these are added to your `pubspec.yaml` file. 