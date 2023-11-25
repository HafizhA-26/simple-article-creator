import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/text_theme.dart';

class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: const Color(0xFF1e3799),
    disabledForegroundColor: Colors.grey,
    disabledBackgroundColor: const Color(0xFF4a69bd),
    side: const BorderSide(color: Color(0xFF1e3799)),
    padding: const EdgeInsets.symmetric(vertical: 18),
    textStyle: CustomTextTheme.lightTextTheme.bodyMedium,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: const Color(0xFF1e3799),
    disabledForegroundColor: Colors.grey,
    disabledBackgroundColor: const Color(0xFF4a69bd),
    side: const BorderSide(color: Color(0xFF1e3799)),
    padding: const EdgeInsets.symmetric(vertical: 18),
    textStyle: CustomTextTheme.lightTextTheme.bodyMedium,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));
}
