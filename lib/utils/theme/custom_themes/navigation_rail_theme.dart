import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';

class CustomNavigationRailTheme {
  static NavigationRailThemeData lightNavigationRail =
      const NavigationRailThemeData(
    selectedIconTheme: IconThemeData(color: ThemeColors.white),
    backgroundColor: ThemeColors.light,
    indicatorColor: ThemeColors.secondary,
  );
  static NavigationRailThemeData darkNavigationRail =
      const NavigationRailThemeData(
    selectedIconTheme: IconThemeData(color: ThemeColors.light),
    backgroundColor: ThemeColors.dark,
    indicatorColor: ThemeColors.secondary,
  );
}
