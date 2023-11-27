import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:simple_article_creator/navigation_menu.dart';
import 'package:simple_article_creator/utils/theme/theme_provider.dart';

class ArticleCreator extends StatelessWidget {
  const ArticleCreator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Simple Article Creator',
      themeMode: ThemeMode.system,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const NavigationMenu(),
    );
  }
}
