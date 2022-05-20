import 'package:camping_ui/constants/colors.dart';
import 'package:camping_ui/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CreateNewPlaceWidget extends StatelessWidget {
  const CreateNewPlaceWidget(
      {Key? key, required this.sW, required this.sH, required this.textFactor})
      : super(key: key);

  final double sW;
  final double sH;
  final double textFactor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 78 * sH,
          width: 381 * sW,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: CustomColors.backgroundCard),
          child: Padding(
            padding: EdgeInsets.fromLTRB(29 * sW, 14 * sH, 29 * sW, 14 * sH),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                            textColor: CustomColors.textColor,
                            textSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0,
                            textscaleFactor: textFactor,
                            text: "Create  New Place"),
                        CustomTextWidget(
                            textColor: CustomColors.textColor,
                            textSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                            textscaleFactor: textFactor,
                            text: "Create camping with your Friends"),
                      ],
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 24 * sW,
                      backgroundColor: CustomColors.orange,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
