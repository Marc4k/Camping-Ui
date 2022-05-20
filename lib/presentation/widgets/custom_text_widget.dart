import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {Key? key,
      required this.textColor,
      required this.textSize,
      required this.fontWeight,
      required this.letterSpacing,
      required this.textscaleFactor,
      required this.text})
      : super(key: key);

  final Color textColor;
  final double textSize;
  final FontWeight fontWeight;
  final String text;
  final double letterSpacing;
  final double textscaleFactor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      textScaleFactor: textscaleFactor,
      style: GoogleFonts.roboto(
          textStyle: TextStyle(
        fontSize: textSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        color: textColor,
      )),
    );
  }
}
