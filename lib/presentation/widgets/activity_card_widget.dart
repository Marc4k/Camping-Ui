// ignore_for_file: prefer_const_constructors

import 'package:camping_ui/constants/colors.dart';
import 'package:camping_ui/presentation/widgets/custom_button_with_image_full_screen_widget.dart';
import 'package:camping_ui/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import 'create_new_place_widget.dart';
import 'custom_button_with_image_widget.dart';

class ActivityCardWidget extends StatelessWidget {
  const ActivityCardWidget(
      {Key? key, required this.sH, required this.textscale, required this.sW})
      : super(key: key);

  final double sH;
  final double sW;
  final double textscale;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 639 * sH,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(34.0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(34.0),
            bottomLeft: Radius.circular(0)),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16 * sW, 46 * sH, 16 * sW, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
                textColor: CustomColors.textColor,
                textSize: 24,
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
                textscaleFactor: textscale,
                text: "Activities you Love"),
            SizedBox(height: 20 * sH),
            Row(
              children: [
                CustomButtonWithImageWidget(
                    spacingTop: 23,
                    text: "Kayaking",
                    imagePath: "assets/img/boat.png",
                    sW: sW,
                    sH: sH,
                    imageHeight: 51,
                    imageWidth: 49,
                    callback: () {},
                    buttonColor1: CustomColors.darkBlueButton1,
                    buttonColor2: CustomColors.darkBlueButton2,
                    height: 123 * sH,
                    width: 121 * sW,
                    textScaleFactor: textscale),
                SizedBox(width: 10 * sW),
                CustomButtonWithImageWidget(
                    spacingTop: 45,
                    text: "Fishing",
                    imagePath: "assets/img/fish.png",
                    sW: sW,
                    sH: sH,
                    imageHeight: 31,
                    imageWidth: 56,
                    callback: () {},
                    buttonColor1: CustomColors.blueButton1,
                    buttonColor2: CustomColors.blueButton2,
                    height: 123 * sH,
                    width: 120 * sW,
                    textScaleFactor: textscale),
                SizedBox(width: 10 * sW),
                CustomButtonWithImageWidget(
                    spacingTop: 23,
                    text: "Camping",
                    imagePath: "assets/img/tent.png",
                    sW: sW,
                    sH: sH,
                    imageHeight: 48,
                    imageWidth: 48,
                    callback: () {},
                    buttonColor1: CustomColors.greenButton1,
                    buttonColor2: CustomColors.greenButton2,
                    height: 123 * sH,
                    width: 121 * sW,
                    textScaleFactor: textscale),
              ],
            ),
            SizedBox(height: 39 * sH),
            CustomTextWidget(
                textColor: CustomColors.textColor,
                textSize: 24,
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
                textscaleFactor: textscale,
                text: "Recommended Place"),
            SizedBox(height: 20 * sH),
            SizedBox(
              height: 169 * sH,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomButtonWithImageFullScreenWidget(
                      callback: () {},
                      height: 169,
                      width: 153,
                      textScaleFactor: textscale,
                      sH: sH,
                      sW: sW,
                      textBig: "Gunung Salak",
                      textSmall: "Indonesia",
                      imagePath: "assets/img/Gunung.png"),
                  SizedBox(width: 10 * sW),
                  CustomButtonWithImageFullScreenWidget(
                      callback: () {},
                      height: 169,
                      width: 153,
                      textScaleFactor: textscale,
                      sH: sH,
                      sW: sW,
                      textBig: "Mount Everest",
                      textSmall: "Nepal",
                      imagePath: "assets/img/everest.png"),
                  SizedBox(width: 10 * sW),
                  CustomButtonWithImageFullScreenWidget(
                      callback: () {},
                      height: 169,
                      width: 153,
                      textScaleFactor: textscale,
                      sH: sH,
                      sW: sW,
                      textBig: "Emerald lake",
                      textSmall: "Canada",
                      imagePath: "assets/img/emerald.png"),
                ],
              ),
            ),
            SizedBox(height: 44 * sH),
            CreateNewPlaceWidget(
              textFactor: textscale,
              sH: sH,
              sW: sW,
            )
          ],
        ),
      ),
    );
  }
}
