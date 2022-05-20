import 'package:camping_ui/constants/colors.dart';
import 'package:camping_ui/presentation/widgets/activity_card_widget.dart';
import 'package:camping_ui/presentation/widgets/custom_icon_button_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double mockupHeight = 896;
    const double mockupWidth = 414;

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final textscale = width / mockupWidth;
    final sH = height / mockupHeight;
    final sW = width / mockupWidth;

    return Scaffold(
      backgroundColor: CustomColors.backgroundColorHome,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: width,
                height: 257 * sH,
                child: Image.asset(
                  "assets/img/home-bus.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SafeArea(
                child: Row(
                  children: [
                    CustomIconButton(
                        callback: () {},
                        iconColor: Colors.white.withOpacity(0.8),
                        iconSize: 24 * textscale,
                        buttonIcon: const Icon(Icons.menu)),
                    const Spacer(),
                    CustomIconButton(
                        callback: () {},
                        iconColor: Colors.white.withOpacity(0.8),
                        iconSize: 24 * textscale,
                        buttonIcon: const Icon(Icons.notifications_outlined)),
                  ],
                ),
              ),
            ],
          ),
          ActivityCardWidget(sH: sH, sW: sW, textscale: textscale),
        ],
      ),
    );
  }
}
