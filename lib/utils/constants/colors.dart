import 'package:flutter/material.dart';

class ThemeColors {
  ThemeColors._();
  static const Color primary = Color(0xFF1e3799);
  static const Color secondary = Color(0xFF4a69bd);
  static const Color accent = Color(0xFF78e08f);

  static const Gradient primaryGradient = LinearGradient(
      colors: [Color(0xFF4a69bd), Color(0xFF1e3799), Color(0xFF0c2461)],
      begin: Alignment(0, 0),
      end: Alignment(0.707, -0.707));

  static const Color textPrimary = Color(0xFF1e272e);
  static const Color textSecondary = Color(0xFF0c2461);
  static const Color textWhite = Color(0xFFFFFFFF);

  static const Color light = Color(0xFFFFFFFF);
  static const Color dark = Color(0xFF0c2461);
  static const Color primaryBackground = Color(0xFFFFFFFF);

  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color darkContainer = Color(0xFF0c2461);

  static const Color buttonPrimary = Color(0xFF1e3799);
  static const Color buttonSecondary = Color(0xFF3c6382);
  static const Color buttonDisabled = Color(0xFF485460);

  static const Color borderPrimary = Color(0xFF1e3799);
  static const Color borderSecondary = Color(0xFF4a69bd);

  static const Color error = Color(0xFFeb2f06);
  static const Color success = Color(0xFF38ada9);
  static const Color warning = Color(0xFFfa983a);
  static const Color info = Color(0xFF4a69bd);

  static const Color black = Color(0xFF1e272e);
  static const Color darkerGrey = Color(0xFF485460);
  static const Color darkGrey = Color(0xFF808e9b);
  static const Color grey = Color(0xFFd2dae2);
  static const Color softGrey = Color(0xFFced6e0);
  static const Color lightGrey = Color(0xFFf1f2f6);
  static const Color white = Color(0xFFFFFFFF);
}
