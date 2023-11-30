import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:simple_article_creator/common/widgets/category_chip.dart';
import 'package:simple_article_creator/common/widgets/rich_text_editor.dart';
import 'package:simple_article_creator/common/widgets/rounded_rectangle_button.dart';
import 'package:simple_article_creator/common/widgets/text_field_type_1.dart';
import 'package:simple_article_creator/domain/article.dart';
import 'package:simple_article_creator/presentation/creator/detail_article.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/constants/sizes.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';
import 'package:simple_article_creator/utils/validators/validator.dart';

class CreatorSection extends StatefulWidget {
  const CreatorSection({super.key});

  @override
  State<CreatorSection> createState() => _CreatorSectionState();
}

class _CreatorSectionState extends State<CreatorSection> {
  final TextEditingController titleController = TextEditingController();
  final QuillController contentController = QuillController.basic();
  final List<String> categories = listCategory;
  final List<bool> useCategories = List.filled(listCategory.length, false);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    final formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.all(ThemeSizes.md),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Theme.of(context).colorScheme.shadow.withOpacity(0.20),
                blurRadius: 10,
                offset: const Offset(0, 4))
          ]),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Article",
              style: textTheme.headlineLarge,
            ),
            HelperFunction.addVerticalMargin(5),
            Text(
              "Pour your creativity into a written work",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.md),
            SizedBox(
              width: 150,
              child: Divider(
                thickness: 5,
                color: colorTheme.secondary,
              ),
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.md),
            Text(
              "Judul Artikel",
              style: textTheme.bodyLarge,
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.xs),
            TextFieldType1(
              placeHolder: "Masukkan judul artikel anda",
              controller: titleController,
              value: titleController.text,
              validator: CustomValidator.errorJudulArtikel,
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.md),
            Text(
              "Isi Artikel",
              style: textTheme.bodyLarge,
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.xs),
            QuillRichTextEditor(controller: contentController),
            HelperFunction.addVerticalMargin(ThemeSizes.md),
            Text(
              "Kategori Artikel",
              style: textTheme.bodyLarge,
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.xs),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                  listCategory.length,
                  (index) => CategoryChip(
                      isSelected: useCategories.elementAt(index),
                      onSelected: (value) {
                        setState(() {
                          useCategories[index] = value;
                        });
                      },
                      label: listCategory.elementAt(index))),
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.md),
            Text(
              "Kategori Artikel",
              style: textTheme.bodyLarge,
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.xs),
            SizedBox(
              width: 200,
              child: RoundedRectangleButton(
                  onPressed: () {
                    HelperFunction.showAlert(
                        "Informasi", "Fitur Belum Tersedia!");
                  },
                  customStyleText: textTheme.bodyMedium,
                  backgroundColor: colorTheme.secondary,
                  borderRadius: 5,
                  customPadding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: ThemeSizes.md),
                  buttonText: "Upload File",
                  isOutlined: false,
                  borderWidth: 0,
                  elevation: 2),
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.xl),
            const Divider(
              thickness: 3,
              color: ThemeColors.grey,
            ),
            HelperFunction.addVerticalMargin(ThemeSizes.xl),
            RoundedRectangleButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    HelperFunction.showSnackBar("Berhasil");
                    Article newArticle = Article(
                      title: titleController.text.toString(),
                      content: contentController.document.toPlainText(),
                      categories: HelperFunction.chipStringExtract(
                        categories,
                        useCategories,
                      ),
                      creator: "Anonymous",
                      createdAt: DateTime.now(),
                      updatedAt: DateTime.now(),
                    );
                    HelperFunction.navigateToScreen(
                        context, DetailArticleScreen(article: newArticle));
                  }
                },
                backgroundColor: ThemeColors.success,
                pressedBackgroundColor: ThemeColors.accent,
                borderRadius: 20,
                customPadding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: ThemeSizes.md),
                buttonText: "Show Preview",
                isOutlined: false,
                borderWidth: 0,
                elevation: 3),
            HelperFunction.addVerticalMargin(ThemeSizes.xs + 5),
            const RoundedRectangleButton(
                onPressed: null,
                borderRadius: 20,
                backgroundColor: ThemeColors.grey,
                customPadding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: ThemeSizes.md),
                buttonText: "Save",
                isOutlined: false,
                borderWidth: 0,
                elevation: 3)
          ],
        ),
      ),
    );
  }
}
