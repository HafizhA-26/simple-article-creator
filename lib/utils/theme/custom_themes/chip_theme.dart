import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/text_theme.dart';

class CustomChipTheme {
  CustomChipTheme._();
  static ChipThemeData lightChipTheme = ChipThemeData(
      labelStyle: CustomTextTheme.lightTextTheme.labelMedium!.copyWith(
          color: MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return ThemeColors.white;
        } else {
          return ThemeColors.primary;
        }
      })),
      side: const BorderSide(color: ThemeColors.primary),
      disabledColor: ThemeColors.white,
      selectedColor: ThemeColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      checkmarkColor: ThemeColors.white);
  static ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: ThemeColors.white,
      labelStyle: CustomTextTheme.dartkTextTheme.labelMedium!.copyWith(
          color: MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return ThemeColors.white;
        } else {
          return ThemeColors.white;
        }
      })),
      side: const BorderSide(color: ThemeColors.white),
      selectedColor: ThemeColors.secondary,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      checkmarkColor: ThemeColors.white);
}
