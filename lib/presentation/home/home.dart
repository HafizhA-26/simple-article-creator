import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/device/device.dart';
import 'package:simple_article_creator/utils/helpers/helper_function.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      double fontSizeFactor = DeviceUtils.isMobile(context) ? 0.8 : 1;
      return Container(
        color: Theme.of(context).colorScheme.background,
        width: contraints.maxWidth,
        padding: const EdgeInsets.all(10),
        height: DeviceUtils.getScreenHeight(),
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Welcome !",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .apply(fontSizeFactor: 2),
              ),
              HelperFunction.addVerticalMargin(20),
              SizedBox(
                  width: 500,
                  child: Text(
                    "This is a simple article creator, this app can create a static article but can't save it",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium!.apply(
                        fontWeightDelta: -2, fontSizeFactor: fontSizeFactor),
                  ))
            ]),
          ),
        ),
      );
    });
  }
}
