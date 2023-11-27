import 'package:flutter/material.dart';
import 'package:simple_article_creator/presentation/profile/widgets/profile_appbar.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/device/device.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          if (DeviceUtils.isMobile(context)) const ProfileAppBar(),
          Container(
            height: DeviceUtils.getScreenHeight(),
            color: ThemeColors.accent,
          )
        ]),
      ),
    );
  }
}
