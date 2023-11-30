import 'package:flutter/material.dart';
import 'package:simple_article_creator/utils/constants/colors.dart';

class RoundedRectangleButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color? pressedBackgroundColor;
  final double borderRadius;
  final EdgeInsets customPadding;
  final String buttonText;
  final TextStyle? customStyleText;
  final bool isOutlined;
  final double borderWidth;
  final Color? borderColor;
  final double elevation;
  const RoundedRectangleButton(
      {super.key,
      this.onPressed,
      required this.backgroundColor,
      this.pressedBackgroundColor,
      required this.borderRadius,
      required this.customPadding,
      required this.buttonText,
      required this.isOutlined,
      required this.borderWidth,
      this.borderColor,
      required this.elevation,
      this.customStyleText});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorSceme = Theme.of(context).colorScheme;
    Color pressedColor =
        pressedBackgroundColor ?? backgroundColor.withOpacity(0.8);
    TextStyle textStyleUsed = customStyleText ?? textTheme.bodyLarge!;
    textStyleUsed = textStyleUsed.apply(
        color: isOutlined ? borderColor : ThemeColors.white);
    final MaterialStateProperty<Color> buttonBackgroundColor =
        MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (isOutlined) {
        if (states.contains(MaterialState.selected)) {
          return borderColor!;
        } else {
          return colorSceme.primaryContainer;
        }
      } else {
        if (states.contains(MaterialState.selected)) {
          return pressedColor;
        } else {
          return backgroundColor;
        }
      }
    });
    final MaterialStateProperty<Color> buttonOverlayColor =
        MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (isOutlined) {
        if (states.contains(MaterialState.hovered)) {
          return borderColor!;
        } else {
          return colorSceme.primaryContainer;
        }
      } else {
        if (states.contains(MaterialState.hovered)) {
          return pressedColor;
        } else {
          return backgroundColor;
        }
      }
    });
    return ElevatedButton(
      style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.bottomCenter,
          minimumSize: MaterialStateProperty.all<Size>(Size.zero),
          elevation: MaterialStateProperty.all(elevation),
          padding: MaterialStateProperty.all(customPadding),
          backgroundColor: buttonBackgroundColor,
          overlayColor: buttonOverlayColor,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            side: isOutlined
                ? BorderSide(color: borderColor!, width: borderWidth)
                : const BorderSide(width: 0, color: Colors.transparent),
            borderRadius: BorderRadius.circular(borderRadius),
          ))),
      onPressed: onPressed,
      child: Center(
        child: Text(buttonText, style: textStyleUsed),
      ),
    );
  }
}
