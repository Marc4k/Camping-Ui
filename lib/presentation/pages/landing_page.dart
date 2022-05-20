import 'package:camping_ui/presentation/pages/home_page.dart';
import 'package:camping_ui/presentation/widgets/custom_text_widget.dart';
import 'package:camping_ui/presentation/widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

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
      body: Stack(
        children: [
          SizedBox(
            height: mockupHeight * sH,
            width: mockupWidth * sW,
            child: Image.asset(
              "assets/img/bg2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              CustomTextWidget(
                  textscaleFactor: textscale,
                  letterSpacing: 0,
                  textColor: Colors.white,
                  textSize: 24,
                  fontWeight: FontWeight.bold,
                  text: "The Camping App"),
              SizedBox(height: 10 * sH),
              CustomTextWidget(
                  textscaleFactor: textscale,
                  letterSpacing: 1.3,
                  textColor: Colors.white.withOpacity(0.8),
                  textSize: 16,
                  fontWeight: FontWeight.normal,
                  text:
                      "Connect with people and plan your \n next escape to explore this beatiful \n World!"),
              SizedBox(height: 24 * sH),
              CustomElevatedButtonWidget(
                  textScaleFactor: textscale,
                  height: 382 * sH,
                  width: 50 * sW,
                  buttonColor: Colors.orange,
                  callback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  textColor: Colors.white),
              SizedBox(height: 54 * sH)
            ],
          )
        ],
      ),
    );
  }
}
