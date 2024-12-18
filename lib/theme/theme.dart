import 'package:flutter/material.dart';

class AppTheme {
  // Light theme configuration
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
      error: const Color.fromARGB(
          11, 226, 163, 163), // Milder red color for errors
      onError: Colors.white,
    ).copyWith(
      // Material 3 surface tint color for elevated surfaces
      surfaceTint: Colors.blue.withOpacity(0.05),
    ),
    // Material 3 recommended settings
    scaffoldBackgroundColor: const Color(0xFFFAFAFA), // M3 light background
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 2,
    ),
    // Card and surface settings
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    // Input and selection settings
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    // Navigation and button settings
    navigationBarTheme: NavigationBarThemeData(
      elevation: 2,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      height: 80,
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    // Typography settings following Material 3 type scale
    textTheme: const TextTheme().copyWith(
      displayLarge: const TextStyle(fontSize: 57),
      displayMedium: const TextStyle(fontSize: 45),
      displaySmall: const TextStyle(fontSize: 36),
      headlineLarge: const TextStyle(fontSize: 32),
      headlineMedium: const TextStyle(fontSize: 28),
      headlineSmall: const TextStyle(fontSize: 24),
      titleLarge: const TextStyle(fontSize: 22),
      titleMedium: const TextStyle(fontSize: 16),
      titleSmall: const TextStyle(fontSize: 14),
      bodyLarge: const TextStyle(fontSize: 16),
      bodyMedium: const TextStyle(fontSize: 14),
      bodySmall: const TextStyle(fontSize: 12),
      labelLarge: const TextStyle(fontSize: 14),
      labelMedium: const TextStyle(fontSize: 12),
      labelSmall: const TextStyle(fontSize: 11),
    ),
  );

  // Dark theme configuration
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
      error: const Color(0xFFEF9A9A), // Even milder red for dark theme
      onError: Colors.white,
    ).copyWith(
      // Material 3 surface tint color for elevated surfaces
      surfaceTint: Colors.blue.withOpacity(0.05),
    ),
    // Material 3 recommended settings
    scaffoldBackgroundColor: const Color(0xFF121212), // M3 dark background
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 2,
    ),
    // Card and surface settings
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    // Input and selection settings
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    // Navigation and button settings
    navigationBarTheme: NavigationBarThemeData(
      elevation: 2,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      height: 80,
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    // Typography settings following Material 3 type scale
    textTheme: const TextTheme().copyWith(
      displayLarge: const TextStyle(fontSize: 57),
      displayMedium: const TextStyle(fontSize: 45),
      displaySmall: const TextStyle(fontSize: 36),
      headlineLarge: const TextStyle(fontSize: 32),
      headlineMedium: const TextStyle(fontSize: 28),
      headlineSmall: const TextStyle(fontSize: 24),
      titleLarge: const TextStyle(fontSize: 22),
      titleMedium: const TextStyle(fontSize: 16),
      titleSmall: const TextStyle(fontSize: 14),
      bodyLarge: const TextStyle(fontSize: 16),
      bodyMedium: const TextStyle(fontSize: 14),
      bodySmall: const TextStyle(fontSize: 12),
      labelLarge: const TextStyle(fontSize: 14),
      labelMedium: const TextStyle(fontSize: 12),
      labelSmall: const TextStyle(fontSize: 11),
    ),
  );
}
