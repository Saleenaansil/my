import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:firebase/controllers/appcontroller.dart';

class Bottomnavbar extends StatelessWidget {
  Bottomnavbar({super.key});
  Appcontroller appcontroller = Get.put(Appcontroller());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Obx(() {
            return GestureDetector(
                onTap: () {
                  appcontroller.bottomNavbarIndex.value = 0;
                  print("selecedhome");
                },
                child: appcontroller.bottomNavbarIndex.value == 0
                    ? SvgPicture.asset(
                        "asset/svg/bottomnavbar/selected_home.svg")
                    : SvgPicture.asset(
                        "asset/svg/bottomnavbar/unselectedhomepage.svg"));
          }),
          Obx(() {
            return GestureDetector(
                onTap: () {
                  appcontroller.bottomNavbarIndex.value = 1;
                  print("selectedstatisticd");
                },
                child: appcontroller.bottomNavbarIndex.value == 1
                    ? SvgPicture.asset(
                        "asset/svg/bottomnavbar/selectedstatistics.svg")
                    : SvgPicture.asset(
                        "asset/svg/bottomnavbar/unselectedstatistics.svg"));
          }),
          Obx(() {
            return GestureDetector(
                onTap: () {
                  appcontroller.bottomNavbarIndex.value = 2;
                  print("selectedwallet");
                  log(appcontroller.bottomNavbarIndex.value.toString());
                },

                // child: appcontroller.bottomNavbarIndex.value == 2
                //     ? SvgPicture.asset(
                //         "asset/svg/bottomnavbar/selectedwallet.svg")
                //     : SvgPicture.asset(
                //         "asset/svg/bottomnavbar/unselectedwallet.svg"));
                child: appcontroller.bottomNavbarIndex.value == 2
                    ? SvgPicture.asset(
                        "asset/svg/bottomnavbar/selectwallet.svg")
                    : SvgPicture.asset(
                        "asset/svg/bottomnavbar/unselectedwallet.svg"));
          }),
          Obx(() {
            return GestureDetector(
              onTap: () {
                appcontroller.bottomNavbarIndex.value = 3;
                print("unselectedprofile");
              },
              child: appcontroller.bottomNavbarIndex.value == 3
                  ? SvgPicture.asset(
                      "asset/svg/bottomnavbar/selectedprofile.svg")
                  : SvgPicture.asset(
                      "asset/svg/bottomnavbar/unselectedprofile.svg"),
            );
          }),
        ],
      ),
    );
  }
}
