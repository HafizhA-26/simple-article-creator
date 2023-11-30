import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/text_theme.dart';

class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: ThemeColors.white,
    backgroundColor: ThemeColors.primary,
    disabledForegroundColor: ThemeColors.secondary,
    disabledBackgroundColor: ThemeColors.grey,
    textStyle: CustomTextTheme.lightTextTheme.bodyMedium,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: ThemeColors.white,
    backgroundColor: const Color(0xFF1e3799),
    disabledForegroundColor: ThemeColors.secondary,
    disabledBackgroundColor: ThemeColors.grey,
    textStyle: CustomTextTheme.lightTextTheme.bodyMedium,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));
}
