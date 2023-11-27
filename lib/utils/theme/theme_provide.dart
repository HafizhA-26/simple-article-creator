import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';
import 'package:simple_article_creator/utils/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = CustomTheme.darkTheme;
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  ThemeProvider(BuildContext context) {
    _themeData = HelperFunction.isDarkMode(context)
        ? _themeData
        : CustomTheme.lightTheme;
  }

  void toggleTheme() {
    if (_themeData == CustomTheme.lightTheme) {
      themeData = CustomTheme.darkTheme;
    } else {
      themeData = CustomTheme.lightTheme;
    }
  }
}
