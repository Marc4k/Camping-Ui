// ignore_for_file: prefer_const_constructors

import 'package:camping_ui/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomButtonWithImageWidget extends StatelessWidget {
  const CustomButtonWithImageWidget(
      {Key? key,
      required this.callback,
      required this.buttonColor1,
      required this.buttonColor2,
      required this.height,
      required this.width,
      required this.textScaleFactor,
      required this.sH,
      required this.sW,
      required this.text,
      required this.imagePath,
      required this.imageHeight,
      required this.imageWidth,
      required this.spacingTop})
      : super(key: key);

  final VoidCallback callback;
  final String text;
  final Color buttonColor1;
  final Color buttonColor2;
  final double height;
  final double width;
  final double textScaleFactor;
  final double sH;
  final double sW;
  final double imageHeight;
  final double spacingTop;
  final double imageWidth;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [buttonColor1, buttonColor2],
        ),
      ),
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          fixedSize: Size(width, height),
          primary: Colors.transparent,
          onSurface: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Column(
          children: [
            SizedBox(height: spacingTop * sH),
            Image.asset(
              imagePath,
              height: imageHeight * sH,
              width: imageWidth * sH,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 19 * sH),
            CustomTextWidget(
                textColor: Colors.white,
                textSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
                textscaleFactor: textScaleFactor,
                text: text)
          ],
        ),
      ),
    );
  }
}
