import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {Key? key,
      required this.callback,
      required this.iconColor,
      required this.iconSize,
      required this.buttonIcon})
      : super(key: key);

  final VoidCallback callback;
  final Color iconColor;
  final Icon buttonIcon;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: buttonIcon,
      color: iconColor,
      iconSize: iconSize,
      onPressed: callback,
    );
  }
}
