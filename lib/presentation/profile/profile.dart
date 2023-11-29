import 'package:flutter/material.dart';
import 'package:simple_article_creator/presentation/profile/widgets/horizontal_profil.dart';
import 'package:simple_article_creator/presentation/profile/widgets/profile_appbar.dart';
import 'package:simple_article_creator/presentation/profile/widgets/vertical_profile.dart';
import 'package:simple_article_creator/utils/device/device.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = DeviceUtils.isMobile(context);
    final double cardPadding = isMobile ? 15 : 70;
    final cardHeight = DeviceUtils.getScreenHeight();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          if (DeviceUtils.isMobile(context)) const ProfileAppBar(),
          Container(
            padding: EdgeInsets.all(cardPadding),
            constraints: BoxConstraints(minHeight: cardHeight),
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.background),
            child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Theme.of(context)
                              .colorScheme
                              .shadow
                              .withOpacity(0.30),
                          blurRadius: 20,
                          offset: const Offset(0, 4))
                    ]),
                child: DeviceUtils.isMobile(context)
                    ? const VerticalProfile()
                    : const HorizontalProfile()),
          ),
        ]),
      ),
    );
  }
}
