import 'package:flutter/material.dart';
import 'package:simple_article_creator/common/widgets/appbar.dart';
import 'package:simple_article_creator/common/widgets/theme_switch.dart';

class ArticleAppbar extends StatelessWidget {
  const ArticleAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Article Creator",
              style: Theme.of(context).textTheme.titleMedium!,
            ),
          ]),
      actions: const [ThemeSwitch()],
    );
  }
}
