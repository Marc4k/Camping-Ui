import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget(
      {Key? key,
      required this.buttonColor,
      required this.callback,
      required this.textColor,
      required this.height,
      required this.textScaleFactor,
      required this.width})
      : super(key: key);

  final VoidCallback callback;
  final Color buttonColor;
  final Color textColor;
  final double height;
  final double width;
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: callback,
      child: Text(
        "Lets go",
        textScaleFactor: textScaleFactor,
        style: GoogleFonts.roboto(
            textStyle: TextStyle(
                color: textColor, fontSize: 24, fontWeight: FontWeight.w500)),
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: Size(height, width),
          primary: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0))),
    ));
  }
}
