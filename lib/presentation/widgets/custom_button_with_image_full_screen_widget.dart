// ignore_for_file: prefer_const_constructors

import 'package:camping_ui/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomButtonWithImageFullScreenWidget extends StatelessWidget {
  const CustomButtonWithImageFullScreenWidget({
    Key? key,
    required this.callback,
    required this.height,
    required this.width,
    required this.textScaleFactor,
    required this.sH,
    required this.sW,
    required this.textBig,
    required this.textSmall,
    required this.imagePath,
  }) : super(key: key);

  final VoidCallback callback;
  final String textBig;
  final String textSmall;
  final double height;
  final double width;
  final double textScaleFactor;
  final double sH;
  final double sW;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height * sH,
        width: width * sW,
        child: Stack(
          children: [
            Image.asset(
              imagePath,
            ),
            Column(
              children: [
                SizedBox(height: 122 * sH),
                Center(
                  child: CustomTextWidget(
                      textColor: Colors.white,
                      textSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                      textscaleFactor: textScaleFactor,
                      text: textBig),
                ),
                Center(
                  child: CustomTextWidget(
                      textColor: Colors.white.withOpacity(0.8),
                      textSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0,
                      textscaleFactor: textScaleFactor,
                      text: textSmall),
                ),
              ],
            )
          ],
        ));
  }
}
