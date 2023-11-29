import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/constants/sizes.dart';
import 'package:simple_article_creator/utils/theme/custom_themes/text_theme.dart';

class CustomNavigationBarTheme {
  CustomNavigationBarTheme._();
  static NavigationBarThemeData lightTheme = NavigationBarThemeData(
    iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const IconThemeData(color: ThemeColors.white);
      }
      return const IconThemeData(color: ThemeColors.secondary);
    }),
    backgroundColor: ThemeColors.white.withOpacity(1),
    surfaceTintColor: ThemeColors.white.withOpacity(1),
    indicatorColor: ThemeColors.primary,
    shadowColor: ThemeColors.black,
    labelTextStyle: MaterialStatePropertyAll<TextStyle>(CustomTextTheme
        .lightTextTheme.labelMedium!
        .copyWith(color: ThemeColors.primary, fontWeight: FontWeight.w400)),
    height: ThemeSizes.bottomBarHeight,
    elevation: 5,
  );
  static NavigationBarThemeData darkTheme = NavigationBarThemeData(
      iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return const IconThemeData(color: ThemeColors.grey);
        }
        return const IconThemeData(color: ThemeColors.white);
      }),
      labelTextStyle: MaterialStatePropertyAll<TextStyle>(CustomTextTheme
          .lightTextTheme.labelMedium!
          .copyWith(color: ThemeColors.white, fontWeight: FontWeight.w400)),
      backgroundColor: ThemeColors.dark.withOpacity(1),
      surfaceTintColor: ThemeColors.dark.withOpacity(1),
      indicatorColor: ThemeColors.secondary,
      shadowColor: ThemeColors.darkGrey,
      height: ThemeSizes.bottomBarHeight,
      elevation: 5);
}
