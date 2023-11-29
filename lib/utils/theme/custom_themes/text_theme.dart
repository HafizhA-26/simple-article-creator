import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';

class CustomTextTheme {
  CustomTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.w700, color: ThemeColors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: ThemeColors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: ThemeColors.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w700, color: ThemeColors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: ThemeColors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w500, color: ThemeColors.black),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: ThemeColors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w400, color: ThemeColors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w300, color: ThemeColors.black),
    labelLarge: const TextStyle().copyWith(
        fontSize: 13, fontWeight: FontWeight.w400, color: ThemeColors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 11, fontWeight: FontWeight.w300, color: ThemeColors.black),
  );
  static TextTheme dartkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.w700, color: ThemeColors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: ThemeColors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: ThemeColors.lightGrey),
    titleLarge: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: ThemeColors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: ThemeColors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w400, color: ThemeColors.white),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: ThemeColors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w400, color: ThemeColors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w300, color: ThemeColors.white),
    labelLarge: const TextStyle().copyWith(
        fontSize: 13, fontWeight: FontWeight.w400, color: ThemeColors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 11, fontWeight: FontWeight.w300, color: ThemeColors.white),
  );
}
