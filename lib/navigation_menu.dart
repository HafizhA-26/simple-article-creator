import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_article_creator/common/widgets/theme_switch.dart';
import 'package:simple_article_creator/presentation/creator/article_creator.dart';
import 'package:simple_article_creator/presentation/profile/profile.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';
import 'package:simple_article_creator/utils/device/device.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: DeviceUtils.isMobile(context)
          ? Obx(
              () => NavigationBar(
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) =>
                      controller.selectedIndex.value = index,
                  destinations: const [
                    NavigationDestination(
                        icon: Icon(Icons.text_snippet_outlined),
                        label: "Articles"),
                    NavigationDestination(
                        icon: Icon(Icons.draw), label: "Create"),
                    NavigationDestination(
                        icon: Icon(Icons.badge), label: "My Profile")
                  ]),
            )
          : null,
      body: Obx(() => Row(
            children: [
              if (!DeviceUtils.isMobile(context))
                NavigationRail(
                    trailing: const Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ThemeSwitch(),
                        ),
                      ),
                    ),
                    onDestinationSelected: (index) =>
                        controller.selectedIndex.value = index,
                    destinations: const [
                      NavigationRailDestination(
                          icon: Icon(Icons.text_snippet_outlined),
                          label: Text("Articles")),
                      NavigationRailDestination(
                          icon: Icon(Icons.draw),
                          label: Text(
                            "Create",
                          )),
                      NavigationRailDestination(
                          icon: Icon(Icons.badge), label: Text("My Profile"))
                    ],
                    selectedIndex: controller.selectedIndex.value),
              Expanded(
                  child: controller.screens[controller.selectedIndex.value]),
            ],
          )),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 1.obs;
  final screens = [
    Container(
      color: ThemeColors.white,
    ),
    const ArticleCreator(),
    const ProfileScreen(),
  ];
}
