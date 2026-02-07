import 'package:flutter/material.dart';

class DT {
  // Spacing scale
  static const s1 = 4.0,
      s2 = 8.0,
      s3 = 12.0,
      s4 = 16.0,
      s5 = 20.0,
      s6 = 24.0,
      s7 = 28.0,
      s8 = 32.0;

  // Radius (según tu guía)
  static const rChip = 8.0; // radius-chip
  static const rButton = 50.0; // radius-button
  static const rCard = 16.0; // radius-card
  static const rCardSmall = 12.0;
  static const rCardLarge = 24.0;

  // Background colors (NUEVA PALETA)
  static const bgMain = Color(0xFF000000); // color-bg-main
  static const bgSecondary = Color(0xFF0A0A0A); // color-bg-secondary
  static const bgTertiary = Color(0xFF1A1A1A); // color-bg-tertiary

  // Accent colors
  static const accentNeon = Color(0xFF00FFFF); // Aqua Neon
  static const accentGlow = Color.fromRGBO(0, 255, 255, 0.4); // Neon glow aura

  // Text colors
  static const textPrimary = Color(0xFFFFFFFF); // color-text-primary
  static const textSecondary = Color(0xFFA0A0A0); // color-text-secondary

  // Status colors
  static const statusHot = Color(0xFFFF3B3B); // color-status-hot

  // Shadows (neón)
  static const shadowNeonButton = BoxShadow(
    color: Color.fromRGBO(0, 255, 255, 0.6),
    blurRadius: 15,
    spreadRadius: 0,
  );

  static const shadowNeonText = [
    Shadow(color: Color.fromRGBO(0, 255, 255, 0.8), blurRadius: 8),
  ];

  // Borders
  static const borderNeonThin = BorderSide(color: Color(0xFF00FFFF), width: 1);

  // Blur effect (para usar en Containers)
  static BoxDecoration blurBackground = BoxDecoration(
    color: Colors.black.withOpacity(0.6),
    backgroundBlendMode: BlendMode.darken,
  );

  // Typography Styles (SEGÚN TU TABLA)
  static const textDisplayNeon = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: accentNeon,
    shadows: shadowNeonText,
  );

  static const textH1Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: textPrimary,
  );

  static const textH2Medium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: textPrimary,
  );

  static const textBodyMain = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: textPrimary,
  );

  static const textChipLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: accentNeon,
  );

  static const textCaption = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: textSecondary,
  );
}
