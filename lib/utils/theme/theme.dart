import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/appbar_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/chip_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/text_field_theme.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/text_theme.dart';

class CustomTheme {
  CustomTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Montserrat",
      brightness: Brightness.light,
      primaryColor: const Color(0xFF1e3799),
      scaffoldBackgroundColor: Colors.white,
      textTheme: CustomTextTheme.lightTextTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
      chipTheme: CustomChipTheme.lightChipTheme,
      appBarTheme: CustomAppBarTheme.lightAppBarTheme,
      checkboxTheme: CustomCheckBoxTheme.lightCheckboxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: CustomTextFieldTheme.lightInputDecarationTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Montserrat",
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF1e3799),
      scaffoldBackgroundColor: const Color(0xFF1e272e),
      textTheme: CustomTextTheme.dartkTextTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
      chipTheme: CustomChipTheme.darkChipTheme,
      appBarTheme: CustomAppBarTheme.darkAppBarTheme,
      checkboxTheme: CustomCheckBoxTheme.darkCheckboxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
      inputDecorationTheme: CustomTextFieldTheme.darkInputDecorationTheme);
}
