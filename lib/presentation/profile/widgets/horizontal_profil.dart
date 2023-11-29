import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_article_creator/common/widgets/circle_icon_button.dart';
import 'package:simple_article_creator/presentation/profile/widgets/profile_data.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';

class HorizontalProfile extends StatelessWidget {
  const HorizontalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return LayoutBuilder(builder: (context, constraints) {
      final paddingRatio = constraints.maxWidth / 1316;
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: constraints.minHeight,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/profile/profil.jpg"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style: textTheme.headlineLarge,
                  ),
                  HelperFunction.addVerticalMargin(5),
                  Text(
                    "Nice to meet you! let's be friends",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  HelperFunction.addVerticalMargin(15 * paddingRatio),
                  SizedBox(
                    width: 100,
                    child: Divider(
                      thickness: 5,
                      color: colorTheme.secondary,
                    ),
                  ),
                  HelperFunction.addVerticalMargin(40 * paddingRatio),
                  ProfileData(
                      profileLabel: "Nama Lengkap",
                      profileData: "Muhammad Hafizh Auliansyah",
                      bottomMargin: 25 * paddingRatio),
                  ProfileData(
                      profileLabel: "Umur",
                      profileData: "20",
                      bottomMargin: 25 * paddingRatio),
                  ProfileData(
                      profileLabel: "Job",
                      profileData: "Collage Student",
                      bottomMargin: 40 * paddingRatio),
                  SizedBox(
                    width: 100,
                    child: Divider(
                      thickness: 5,
                      color: colorTheme.secondary,
                    ),
                  ),
                  HelperFunction.addVerticalMargin(40 * paddingRatio),
                  Text(
                    "Follow Me At",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  HelperFunction.addVerticalMargin(15 * paddingRatio),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleIconButton(
                          btnIcon: FontAwesomeIcons.instagram,
                          onPressed: () {
                            HelperFunction.launchURL(
                                "https://instagram.com/hafizhauliansyah/");
                          }),
                      HelperFunction.addHorizontalMargin(10),
                      CircleIconButton(
                          btnIcon: FontAwesomeIcons.facebook,
                          onPressed: () {
                            HelperFunction.launchURL(
                                "https://www.facebook.com/hafizh.a26");
                          }),
                      HelperFunction.addHorizontalMargin(10),
                      CircleIconButton(
                          btnIcon: FontAwesomeIcons.linkedin,
                          onPressed: () {
                            HelperFunction.launchURL(
                                "https://www.linkedin.com/in/hafizh-auliansyah-169b88278/");
                          })
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      );
    });
  }
}
