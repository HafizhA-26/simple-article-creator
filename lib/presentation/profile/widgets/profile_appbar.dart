import 'package:flutter/material.dart';
import 'package:simple_article_creator/common/widgets/appbar.dart';
import 'package:simple_article_creator/common/widgets/theme_switch.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "About Me",
          style: Theme.of(context).textTheme.titleMedium!,
        ),
        Text(
          "Nice to meet you! let's be friends",
          style: Theme.of(context).textTheme.labelMedium!,
        )
      ]),
      actions: const [ThemeSwitch()],
    );
  }
}
