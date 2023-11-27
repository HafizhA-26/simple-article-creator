import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/theme/theme.dart';
import 'package:simple_article_creator/utils/theme/theme_provide.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark =
        Provider.of<ThemeProvider>(context).themeData == CustomTheme.darkTheme;
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Theme.of(context).colorScheme.secondary;
        }
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Theme.of(context).colorScheme.secondary;
        }

        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.lightGrey;
        }

        return null;
      },
    );
    final MaterialStateProperty<Icon?> thumbIcon =
        MaterialStateProperty.resolveWith<Icon?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return const Icon(
            Icons.dark_mode_outlined,
            size: 15,
            color: ThemeColors.white,
          );
        }
        return const Icon(
          Icons.light_mode_outlined,
          size: 15,
          color: ThemeColors.primary,
        );
      },
    );
    final MaterialStateProperty<Color?> thumbColor =
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return ThemeColors.black;
      }
      return ThemeColors.lightGrey;
    });
    return Switch(
      value: isDark,
      overlayColor: overlayColor,
      trackColor: trackColor,
      thumbIcon: thumbIcon,
      thumbColor: thumbColor,
      onChanged: (value) =>
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
    );
  }
}
