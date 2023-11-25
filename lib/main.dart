import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/theme/theme.dart';

void main() {
  runApp(const ArticleCreator());
}

class ArticleCreator extends StatelessWidget {
  const ArticleCreator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Article Creator',
      themeMode: ThemeMode.system,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      home: Scaffold(),
    );
  }
}
