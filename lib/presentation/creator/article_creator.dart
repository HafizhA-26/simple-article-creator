import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:simple_article_creator/common/widgets/category_chip.dart';
import 'package:simple_article_creator/common/widgets/rich_text_editor.dart';
import 'package:simple_article_creator/common/widgets/rounded_rectangle_button.dart';
import 'package:simple_article_creator/common/widgets/text_field_type_1.dart';
import 'package:simple_article_creator/domain/article.dart';
import 'package:simple_article_creator/presentation/creator/widget/creator_section.dart';
import 'package:simple_article_creator/presentation/creator/widget/sample_articles.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/constants/sizes.dart';
import 'package:simple_article_creator/utils/device/device.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';
import 'package:simple_article_creator/utils/validators/validator.dart';

class ArticleCreator extends StatefulWidget {
  const ArticleCreator({super.key});

  @override
  State<ArticleCreator> createState() => _ArticleCreatorState();
}

class _ArticleCreatorState extends State<ArticleCreator> {
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
                  ? CreatorSection()
                  : Expanded(flex: 2, child: CreatorSection()),
              isMobile
                  ? HelperFunction.addVerticalMargin(30)
                  : HelperFunction.addHorizontalMargin(30),
              isMobile
                  ? SampleArticles()
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
