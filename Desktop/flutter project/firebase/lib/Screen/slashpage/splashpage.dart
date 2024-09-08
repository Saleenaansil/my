import 'package:firebase/Screen/NavBarcontroller/navBarcontrollingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:firebase/Screen/onboarding/Onboardingpage.dart';
import 'package:firebase/Screen/widgets/customtext.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    gotoNextPage();
    return Scaffold(
      // backgroundColor: Color(0xff63B5AF),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff63B5AF),
            Color(0xff438883),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Center(
            child: Customtext(
                text: "mono",
                textfontSize: 50,
                textcolor: Colors.white,
                textfontweight: FontWeight.w700)),
      ),
    );
  }

  gotoNextPage() async {
    Future.delayed(Duration(milliseconds: 2000), () async {
      //Get.to(Onboardingpage());
      SharedPreferences sharedpref = await SharedPreferences.getInstance();
      final bool? loginStatus = await sharedpref.getBool("loginStatus");
      if (loginStatus == true) {
        Get.off(Navbarcontrollingpage());
      } else
        Get.off(Onboardingpage());
    });
  }
}
