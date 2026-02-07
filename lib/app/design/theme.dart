import 'package:flutter/material.dart';
import 'package:nightmatch/app/design/design_tokens.dart';

ThemeData buildTheme() {
  final base = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark, // Tu app es dark por naturaleza
  );

  return base.copyWith(
    // === COLORES BASE ===
    scaffoldBackgroundColor: DT.bgMain,
    primaryColor: DT.accentNeon,
    hintColor: DT.textSecondary,

    // === TEXTOS ===
    textTheme: base.textTheme
        .copyWith(
          displayLarge: DT.textDisplayNeon,
          displayMedium: DT.textDisplayNeon,
          headlineLarge: DT.textH1Bold,
          headlineMedium: DT.textH2Medium,
          bodyLarge: DT.textBodyMain,
          bodyMedium: DT.textBodyMain,
          bodySmall: DT.textCaption,
          labelLarge: DT.textChipLabel,
        )
        .apply(bodyColor: DT.textPrimary, displayColor: DT.textPrimary),

    // === BOTONES ELEVADOS (Neón Aqua) ===
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: DT.accentNeon,
        foregroundColor: DT.bgMain,
        textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        shadowColor: DT.accentGlow,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DT.rButton),
        ),
      ),
    ),

    // === BOTONES OUTLINED ===
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: DT.textSecondary),
        foregroundColor: DT.textSecondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DT.rButton),
        ),
      ),
    ),

    // === TEXTBUTTON ===
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: DT.accentNeon),
    ),

    // === CARDS ===
    // cardTheme: CardTheme(
    //   color: DT.bgSecondary,
    //   elevation: 8,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(DT.rCard),
    //   ),
    //   shadowColor: Colors.black.withOpacity(0.4),
    // ),

    // === APP BAR ===
    appBarTheme: AppBarTheme(
      backgroundColor: DT.bgMain.withOpacity(0.6),
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      iconTheme: const IconThemeData(color: DT.textPrimary),
      titleTextStyle: DT.textH2Medium,
    ),

    // === ICONOS ===
    iconTheme: const IconThemeData(color: DT.textPrimary, size: 22),

    // === CAMPOS DE TEXTO (inputs) ===
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: DT.bgTertiary,
      hintStyle: TextStyle(color: DT.textSecondary),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: DT.bgTertiary),
        borderRadius: BorderRadius.circular(DT.rCard),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: DT.bgTertiary),
        borderRadius: BorderRadius.circular(DT.rCard),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: DT.accentNeon, width: 1.3),
        borderRadius: BorderRadius.circular(DT.rCard),
      ),
    ),

    // === DIVIDERS ===
    dividerTheme: DividerThemeData(color: DT.bgTertiary, thickness: 1),

    // === COLORSCHEME (Opcional, pero recomendado) ===
    colorScheme: ColorScheme.dark(
      primary: DT.accentNeon,
      secondary: DT.accentNeon,
      background: DT.bgMain,
      surface: DT.bgSecondary,
      tertiary: DT.bgTertiary,
    ),
  );
}
