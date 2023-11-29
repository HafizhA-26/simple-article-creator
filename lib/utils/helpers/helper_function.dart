import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperFunction {
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Ok"))
            ],
          );
        });
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static SizedBox addVerticalMargin(double height) {
    return SizedBox(
      height: height,
    );
  }

  static SizedBox addHorizontalMargin(double width) {
    return SizedBox(
      width: width,
    );
  }

  static void launchURL(String urlToLaunch) async {
    final Uri url = Uri.parse(urlToLaunch);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
