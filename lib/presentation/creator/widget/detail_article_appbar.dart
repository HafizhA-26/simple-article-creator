import 'package:flutter/material.dart';
import 'package:simple_article_creator/common/widgets/appbar.dart';
import 'package:simple_article_creator/common/widgets/theme_switch.dart';

class DetailArticleAppbar extends StatelessWidget {
  const DetailArticleAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingIcon: Icons.arrow_back,
      leadingOnPressed: () {
        Navigator.of(context).pop();
      },
      title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Detail Article",
              style: Theme.of(context).textTheme.titleMedium!,
            ),
          ]),
      actions: const [ThemeSwitch()],
    );
  }
}
