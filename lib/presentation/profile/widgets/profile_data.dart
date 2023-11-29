import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';

class ProfileData extends StatelessWidget {
  final String profileLabel;
  final String profileData;
  final double bottomMargin;
  final double fontSizeRatio;
  const ProfileData(
      {super.key,
      required this.profileLabel,
      required this.profileData,
      required this.bottomMargin,
      this.fontSizeRatio = 1.0});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          profileLabel,
          style: textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w300,
              color: textTheme.headlineSmall!.color,
              fontSize: textTheme.headlineSmall!.fontSize! * fontSizeRatio),
        ),
        Text(
          profileData,
          style: textTheme.headlineMedium!.copyWith(
              fontSize: textTheme.headlineMedium!.fontSize! * fontSizeRatio),
        ),
        HelperFunction.addVerticalMargin(bottomMargin),
      ],
    );
  }
}
