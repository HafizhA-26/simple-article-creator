import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();
  static const lightAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: ThemeColors.white,
      iconTheme: IconThemeData(color: ThemeColors.dark, size: 24),
      actionsIconTheme: IconThemeData(color: ThemeColors.dark, size: 24),
      titleTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: ThemeColors.dark));
  static const darkAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: ThemeColors.dark,
      iconTheme: IconThemeData(color: ThemeColors.white, size: 24),
      actionsIconTheme: IconThemeData(color: ThemeColors.white, size: 24),
      titleTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: ThemeColors.white));
}
