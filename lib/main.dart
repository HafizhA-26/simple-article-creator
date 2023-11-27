import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_article_creator/app.dart';
import 'package:simple_article_creator/utils/theme/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(context),
      child: const ArticleCreator()));
}
