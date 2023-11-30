import 'package:flutter/material.dart';
import 'package:simple_article_creator/presentation/creator/widget/creator_section.dart';
import 'package:simple_article_creator/presentation/creator/widget/sample_articles.dart';
import 'package:simple_article_creator/utils/device/device.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';

class ArticleCreator extends StatelessWidget {
  const ArticleCreator({super.key});

  @override
  Widget build(BuildContext context) {
    final cardPadding = DeviceUtils.isMobile(context)
        ? const EdgeInsets.all(10)
        : const EdgeInsets.symmetric(horizontal: 30, vertical: 20);
    final isMobile = DeviceUtils.isMobile(context);
    return Container(
      constraints: BoxConstraints(
          minHeight: DeviceUtils.getScreenHeight(),
          maxWidth: DeviceUtils.getScreenWidth(context)),
      color: Theme.of(context).colorScheme.background,
      child: SingleChildScrollView(
        child: Padding(
          padding: cardPadding,
          child: Flex(
            crossAxisAlignment: CrossAxisAlignment.start,
            direction: isMobile ? Axis.vertical : Axis.horizontal,
            children: [
              isMobile
                  ? const CreatorSection()
                  : const Expanded(flex: 2, child: CreatorSection()),
              isMobile
                  ? HelperFunction.addVerticalMargin(30)
                  : HelperFunction.addHorizontalMargin(30),
              isMobile
                  ? const SampleArticles()
                  : const Expanded(
                      flex: 1,
                      child: SampleArticles(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
