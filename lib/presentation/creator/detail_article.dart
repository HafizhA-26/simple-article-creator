import 'package:flutter/material.dart';
import 'package:simple_article_creator/common/widgets/category_chip.dart';
import 'package:simple_article_creator/domain/article.dart';
import 'package:simple_article_creator/presentation/creator/widget/detail_article_appbar.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/constants/sizes.dart';
import 'package:simple_article_creator/utils/device/device.dart';
import 'package:simple_article_creator/utils/formatters/formatter.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';

class DetailArticleScreen extends StatelessWidget {
  final Article article;
  const DetailArticleScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final isMobile = DeviceUtils.isMobile(context);
    return Scaffold(
      body: LayoutBuilder(builder: (context, contraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              if (isMobile) const DetailArticleAppbar(),
              Container(
                width: DeviceUtils.getScreenWidth(context),
                color: colorTheme.background,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                      width: isMobile ? contraints.maxWidth : 800,
                      child: Container(
                        padding: const EdgeInsets.all(ThemeSizes.md),
                        decoration: BoxDecoration(
                            color: colorTheme.primaryContainer,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .shadow
                                      .withOpacity(0.20),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4))
                            ]),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (!isMobile)
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStatePropertyAll(
                                                Theme.of(context)
                                                    .primaryColorLight),
                                        padding: const MaterialStatePropertyAll(
                                            EdgeInsets.zero)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(Icons.arrow_back),
                                        HelperFunction.addHorizontalMargin(10),
                                        const Text("Back")
                                      ],
                                    )),
                              HelperFunction.addVerticalMargin(10),
                              Container(
                                height: 400,
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
                              HelperFunction.addVerticalMargin(20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(article.title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium),
                                      HelperFunction.addVerticalMargin(10),
                                      Text("By: ${article.creator}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .apply(fontWeightDelta: -1)),
                                      HelperFunction.addVerticalMargin(25),
                                      Text(article.content,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge),
                                      HelperFunction.addVerticalMargin(25),
                                      Text(
                                          "Created At: ${CustomFormatter.formatDate(article.createdAt)}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .apply(fontWeightDelta: -1)),
                                      Text(
                                          "Updated At: ${CustomFormatter.formatDate(article.createdAt)}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .apply(fontWeightDelta: -1)),
                                      HelperFunction.addVerticalMargin(25),
                                      Text("Categories",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge),
                                      Wrap(
                                        direction: Axis.horizontal,
                                        children: List.generate(
                                            article.categories.length,
                                            (index) => Container(
                                                  margin: const EdgeInsets.only(
                                                      right: 10, top: 5),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color:
                                                          ThemeColors.accent),
                                                  child: Text(
                                                      article.categories[index],
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelLarge!
                                                          .apply(
                                                              color: ThemeColors
                                                                  .white)),
                                                )),
                                      ),
                                    ]),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
