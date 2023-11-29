import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/appbar_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/navigation_bar_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/chip_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/navigation_rail_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/text_field_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/text_theme.dart';

class CustomTheme {
  CustomTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Montserrat",
      brightness: Brightness.light,
      primaryColor: ThemeColors.primary,
      colorScheme: const ColorScheme.light(
          primaryContainer: ThemeColors.white,
          background: ThemeColors.lightGrey,
          primary: ThemeColors.primary,
          secondary: ThemeColors.secondary,
          shadow: ThemeColors.black),
      scaffoldBackgroundColor: ThemeColors.white,
      textTheme: CustomTextTheme.lightTextTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
      chipTheme: CustomChipTheme.lightChipTheme,
      appBarTheme: CustomAppBarTheme.lightAppBarTheme,
      checkboxTheme: CustomCheckBoxTheme.lightCheckboxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: CustomTextFieldTheme.lightInputDecarationTheme,
      navigationBarTheme: CustomNavigationBarTheme.lightTheme,
      navigationRailTheme: CustomNavigationRailTheme.lightNavigationRail);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Montserrat",
      brightness: Brightness.dark,
      primaryColor: ThemeColors.dark,
      colorScheme: const ColorScheme.dark(
          primaryContainer: ThemeColors.black,
          background: ThemeColors.black,
          primary: ThemeColors.dark,
          secondary: ThemeColors.secondary,
          shadow: ThemeColors.darkGrey),
      scaffoldBackgroundColor: ThemeColors.dark,
      textTheme: CustomTextTheme.dartkTextTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
      chipTheme: CustomChipTheme.darkChipTheme,
      appBarTheme: CustomAppBarTheme.darkAppBarTheme,
      checkboxTheme: CustomCheckBoxTheme.darkCheckboxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
      inputDecorationTheme: CustomTextFieldTheme.darkInputDecorationTheme,
      navigationBarTheme: CustomNavigationBarTheme.darkTheme,
      navigationRailTheme: CustomNavigationRailTheme.darkNavigationRail);
}
