import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData btnIcon;
  final VoidCallback onPressed;
  const CircleIconButton(
      {super.key, required this.btnIcon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(Size(60, 60)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.center,
          shape: const MaterialStatePropertyAll(CircleBorder()),
          padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
              EdgeInsets.all(0)),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return colorTheme.primary;
            } else {
              return colorTheme.primaryContainer;
            }
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return colorTheme.primaryContainer;
            } else {
              return colorTheme.primary;
            }
          })),
      child: Icon(
        btnIcon,
      ),
    );
  }
}
