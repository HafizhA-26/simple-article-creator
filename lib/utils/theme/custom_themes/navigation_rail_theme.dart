import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';

class CustomNavigationRailTheme {
  static NavigationRailThemeData lightNavigationRail =
      const NavigationRailThemeData(
    elevation: 2,
    selectedIconTheme: IconThemeData(color: ThemeColors.white),
    backgroundColor: ThemeColors.light,
    indicatorColor: ThemeColors.primary,
  );
  static NavigationRailThemeData darkNavigationRail =
      const NavigationRailThemeData(
    elevation: 2,
    selectedIconTheme: IconThemeData(color: ThemeColors.light),
    backgroundColor: ThemeColors.dark,
    indicatorColor: ThemeColors.secondary,
  );
}
