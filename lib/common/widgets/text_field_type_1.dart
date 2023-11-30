import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';

class TextFieldType1 extends StatefulWidget {
  final String placeHolder;
  final String? value;
  final int maxline;
  final TextEditingController? controller;
  final String? Function(String?) validator;
  final void Function(String)? onChangedAction;

  const TextFieldType1(
      {super.key,
      this.placeHolder = " ",
      this.value = "",
      this.maxline = 1,
      this.controller,
      required this.validator,
      this.onChangedAction});

  @override
  State<TextFieldType1> createState() => _TextFieldType1State();
}

class _TextFieldType1State extends State<TextFieldType1> {
  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final usedController = widget.controller ?? TextEditingController();
    usedController.text = widget.value.toString();
    return TextFormField(
      style: textTheme.bodyMedium,
      controller: usedController,
      maxLines: widget.maxline,
      onChanged: widget.onChangedAction ?? (_) {},
      validator: widget.validator,
      decoration: InputDecoration(
          errorStyle: textTheme.labelSmall!
              .apply(color: ThemeColors.error, heightFactor: 0.4),
          hintText: widget.placeHolder,
          hintStyle: textTheme.bodyMedium!
              .apply(color: textTheme.bodyMedium!.color!.withOpacity(0.5)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ThemeColors.darkGrey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colorTheme.secondary,
                width: 2.0,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)))),
    );
  }
}
