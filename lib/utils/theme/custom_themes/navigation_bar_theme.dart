import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/constants/sizes.dart';

class CustomNavigationBarTheme {
  CustomNavigationBarTheme._();
  static NavigationBarThemeData lightTheme = const NavigationBarThemeData(
    backgroundColor: ThemeColors.white,
    indicatorColor: ThemeColors.secondary,
    height: ThemeSizes.bottomBarHeight,
    elevation: 1,
  );
  static NavigationBarThemeData darkTheme = const NavigationBarThemeData(
      backgroundColor: ThemeColors.dark,
      indicatorColor: ThemeColors.secondary,
      height: ThemeSizes.bottomBarHeight,
      elevation: 1);
}
