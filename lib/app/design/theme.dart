import 'package:flutter/material.dart';
import 'design_tokens.dart';

ThemeData buildTheme() {
  final base = ThemeData(useMaterial3: true, brightness: Brightness.dark);

  return base.copyWith(
    scaffoldBackgroundColor: DT.bgMain,

    // Text Theme
    textTheme: base.textTheme.copyWith(
      displayLarge: DT.textDisplayNeon,
      displayMedium: DT.textDisplayNeon,
      headlineLarge: DT.textH1Bold,
      headlineMedium: DT.textH2Medium,
      bodyLarge: DT.textBodyMain,
      bodyMedium: DT.textBodyMain,
      bodySmall: DT.textCaption,
      labelLarge: DT.textChipLabel,
    ),

    // Botones neon
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: DT.accentNeon,
        foregroundColor: DT.bgMain,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DT.rButton),
        ),
        elevation: 0,
        shadowColor: DT.accentGlow,
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: DT.textSecondary,
        side: const BorderSide(color: DT.textSecondary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DT.rButton),
        ),
      ),
    ),

    cardTheme: CardThemeData(
      color: DT.bgSecondary,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DT.rCard),
      ),
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: DT.bgMain.withOpacity(0.6),
      elevation: 0,
      titleTextStyle: DT.textH2Medium,
      iconTheme: const IconThemeData(color: DT.textPrimary),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: DT.bgTertiary,
      hintStyle: TextStyle(color: DT.textSecondary),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(DT.rCard)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(DT.rCard),
        borderSide: const BorderSide(color: DT.accentNeon),
      ),
    ),
  );
}
