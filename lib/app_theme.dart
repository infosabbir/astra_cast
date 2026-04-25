import 'package:flutter/material.dart';
/*
Use primary for main buttons and active controls.
Use secondary for links, chips, and subtle interactive states.
Use surface everywhere for cards and scaffolds so the UI feels polished.
Use tertiary sparingly for premium or featured moments.
*/

class AppTheme {
  //-------------COLOR SCHEME------------------------
  static const _colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF5EA2FF),
    onPrimary: Color(0xFF06121F),
    secondary: Color(0xFF6EE7F2),
    onSecondary: Color(0xFF032629),
    tertiary: Color(0xFFFF8A65),
    onTertiary: Color(0xFF2A0E05),
    error: Color(0xFFFF6B6B),
    onError: Color(0xFF2A0001),
    surface: Color(0xFF0B1220),
    onSurface: Color(0xFFEAF2FF),
    primaryContainer: Color(0xFF17304D),
    onPrimaryContainer: Color(0xFFD7E7FF),
    secondaryContainer: Color(0xFF11363A),
    onSecondaryContainer: Color(0xFFD6F8FB),
    tertiaryContainer: Color(0xFF4A2417),
    onTertiaryContainer: Color(0xFFFFDBD0),
    errorContainer: Color(0xFF4A1515),
    onErrorContainer: Color(0xFFFFDADA),
    outline: Color(0xFF516076),
    outlineVariant: Color(0xFF2A3445),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFFEAF2FF),
    onInverseSurface: Color(0xFF0B1220),
    inversePrimary: Color(0xFF2F6FCC),
    surfaceTint: Color(0xFF5EA2FF),
  );

  //---------THEME DATA---------------
  static ThemeData get appTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _colorScheme,
      scaffoldBackgroundColor: _colorScheme.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: _colorScheme.surface,
        foregroundColor: _colorScheme.onSurface,
        elevation: 0,
        centerTitle: true,
      ),

      //--------------INPUT DECORATION THEME----------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _colorScheme.primaryContainer,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: _colorScheme.outlineVariant,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: _colorScheme.outlineVariant,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: _colorScheme.primary,
            width: 1.4,
          ),
        ),
      ),

      //------------------ELEVATED BUTTON THEME--------------
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _colorScheme.primary,
          foregroundColor: _colorScheme.onPrimary,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),

      //--------------CARD THEME-----------------------
      cardTheme: CardThemeData(
        color: _colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: _colorScheme.outlineVariant),
        ),
      ),
    );
  }
}
