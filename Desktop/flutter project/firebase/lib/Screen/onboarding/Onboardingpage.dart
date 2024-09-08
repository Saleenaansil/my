import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:firebase/Screen/Homepage/Homepage.dart';
import 'package:firebase/Screen/Loginpage/Loginpage.dart';
import 'package:firebase/Screen/NavBarcontroller/navBarcontrollingpage.dart';
import 'package:firebase/Screen/widgets/custombutton.dart';
import 'package:firebase/Screen/widgets/customtext.dart';

class Onboardingpage extends StatelessWidget {
  const Onboardingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            fit: BoxFit.fitWidth,
            image: AssetImage("asset/onboarding_image.png"),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 56, right: 57, bottom: 0),
            child: Column(
              children: [
                Customtext(
                  text: "spend smarter\nsave more",
                  textfontSize: 36,
                  textcolor: Color(0xff438883),
                  textfontweight: FontWeight.w700,
                  textallignment: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 26, left: 28, right: 28, bottom: 17),
                  child: Custombutton(
                    text: "Get Started",
                    textfontSize: 36,
                    textcolor: Colors.white,
                    textfontweight: FontWeight.w700,
                    height: 67,
                    width: double.infinity,
                    applyGradientColor: true,
                    gradientColor1: Color(0xff69AEA9),
                    gradientColor2: Color(0xff3F8782),
                    borderRadius: 40,
                    onTap: () {
                      Get.off(Loginpage());
                    },
                  ),
                ),

                SizedBox(height: 50)
                // Customtext(
                //  // text: "Already have account? Log In",
                //   textfontSize: 14,
                //   textcolor: Color(0xff438883),
                //   textfontweight: FontWeight.w500,
                //   textallignment: TextAlign.center,
                // ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
