import 'package:flutter/material.dart';
import 'package:simple_article_creator/domain/article.dart';
import 'package:simple_article_creator/presentation/creator/detail_article.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';

class CardArticle extends StatelessWidget {
  final Article article;
  const CardArticle({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    Color surfaceTintColor = Theme.of(context).colorScheme.primaryContainer;

    return Container(
      height: 120,
      margin: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          HelperFunction.navigateToScreen(
              context,
              DetailArticleScreen(
                article: article,
              ));
        },
        child: Card(
          surfaceTintColor: surfaceTintColor,
          color: surfaceTintColor,
          shadowColor: Theme.of(context).colorScheme.shadow,
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(article.cover ??
                            "assets/images/articles/default.png"),
                      ),
                    ),
                  ),
                ),
                HelperFunction.addHorizontalMargin(10),
                Expanded(
                    flex: 3,
                    child: Text(
                      article.title,
                      maxLines: 2,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(overflow: TextOverflow.ellipsis),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
