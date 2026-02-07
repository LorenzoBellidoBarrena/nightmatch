import 'package:flutter/material.dart';

class DT {
  // ==========================
  // SPACING SCALE
  // ==========================
  static const s1 = 4.0,
      s2 = 8.0,
      s3 = 12.0,
      s4 = 16.0,
      s5 = 20.0,
      s6 = 24.0,
      s7 = 28.0,
      s8 = 32.0;

  // ==========================
  // RADII
  // ==========================
  static const rChip = 8.0;
  static const rButton = 50.0;
  static const rCard = 16.0;
  static const rCardSmall = 12.0;
  static const rCardLarge = 24.0;

  // ==========================
  // BACKGROUND COLORS
  // ==========================
  static const bgMain = Color(0xFF000000); // Fondo principal
  static const bgSecondary = Color(0xFF0A0A0A); // Tarjetas, modales
  static const bgTertiary = Color(0xFF1A1A1A); // Inputs, search bar

  // ==========================
  // ACCENT COLORS (NEON)
  // ==========================
  static const accentNeon = Color(0xFF00FFFF); // Aqua neon
  static const accentGlow = Color.fromRGBO(0, 255, 255, 0.4); // Glow suave

  // ==========================
  // TEXT COLORS
  // ==========================
  static const textPrimary = Color(0xFFFFFFFF);
  static const textSecondary = Color(0xFFA0A0A0);

  // ==========================
  // STATUS COLORS
  // ==========================
  static const statusHot = Color(0xFFFF3B3B);

  // ==========================
  // SHADOWS
  // ==========================
  static const shadowNeonButton = BoxShadow(
    color: Color.fromRGBO(0, 255, 255, 0.6),
    blurRadius: 15,
    spreadRadius: 2,
  );

  static const shadowNeonText = [
    Shadow(color: Color.fromRGBO(0, 255, 255, 0.8), blurRadius: 8),
  ];

  // ==========================
  // BORDERS
  // ==========================
  static const borderNeonThin = BorderSide(color: accentNeon, width: 1);

  // ==========================
  // TYPOGRAPHY
  // ==========================
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
