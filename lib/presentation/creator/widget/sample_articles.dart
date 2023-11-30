import 'package:flutter/material.dart';
import 'package:simple_article_creator/domain/article.dart';
import 'package:simple_article_creator/presentation/creator/detail_article.dart';
import 'package:simple_article_creator/presentation/creator/widget/sample_article_card.dart';
import 'package:simple_article_creator/utils/constants/sizes.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';

class SampleArticles extends StatelessWidget {
  const SampleArticles({super.key});

  @override
  Widget build(BuildContext context) {
    final articles = staticArticles;
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth,
        padding: const EdgeInsets.all(ThemeSizes.md),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withOpacity(0.20),
                  blurRadius: 10,
                  offset: const Offset(0, 4))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "See Article Samples",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(fontSizeFactor: 0.8),
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.md),
            Column(
              children: List.generate(articles.length, (index) {
                return CardArticle(
                  article: articles[index],
                );
              }),
            )
          ],
        ),
      );
    });
  }
}
