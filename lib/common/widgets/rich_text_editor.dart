import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/constants/sizes.dart';

class QuillRichTextEditor extends StatelessWidget {
  final QuillController controller;
  const QuillRichTextEditor({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final quillFontSize = {
      'Small': '12',
      'Medium': '16',
      'Large': '22',
      'Clear': '0'
    };

    return Container(
      height: 300,
      decoration: BoxDecoration(
          border: Border.all(color: ThemeColors.darkGrey, width: 1)),
      child: QuillProvider(
        configurations: QuillConfigurations(
          controller: controller,
          sharedConfigurations: const QuillSharedConfigurations(
            locale: Locale('id'),
          ),
        ),
        child: Column(
          children: [
            QuillToolbar(
              configurations: QuillToolbarConfigurations(
                  multiRowsDisplay: false, fontSizesValues: quillFontSize),
            ),
            Expanded(
              child: QuillEditor.basic(
                configurations: const QuillEditorConfigurations(
                  padding: EdgeInsets.all(ThemeSizes.md),
                  readOnly: false,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
