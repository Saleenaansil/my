import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:firebase/Core/Colors.dart';
import 'package:firebase/Screen/Addexpense/Addexpense.dart';
import 'package:firebase/Screen/Homepage/Homepage.dart';
import 'package:firebase/Screen/NavBarcontroller/widgets/bottomnavbar.dart';
import 'package:firebase/Screen/Wallet/Wallet.dart';
import 'package:firebase/Screen/profile/profile.dart';
import 'package:firebase/Screen/statistics/Statistics.dart';
import 'package:firebase/Screen/widgets/customtext.dart';
import 'package:firebase/controllers/appcontroller.dart';

class Navbarcontrollingpage extends StatelessWidget {
  Navbarcontrollingpage({super.key});
  List<Widget> pages = [
    Homepage(),
    Statistics(),
    // Addexpense(),
    Wallet(),
    Profile(),
  ];
  Appcontroller appController = Get.put(Appcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        print("rebuilding");
        return pages[appController.bottomNavbarIndex.value];
      }),
      bottomNavigationBar: Bottomnavbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Addexpense());
        },
        backgroundColor: mainAppColor,
        child: SvgPicture.asset("asset/svg/bottomnavbar/Add.svg"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
