import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase/Screen/widgets/customtext.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //  clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              height: 287,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff69AEA9),
                    Color(0xff3F8782),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 84, left: 24, right: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("asset/svg/Wallet/Wallet.svg"),
                        Customtext(
                            text: "Wallet",
                            textfontSize: 18,
                            textcolor: Colors.white,
                            textfontweight: FontWeight.w600),
                        SvgPicture.asset(
                            "asset/svg/Homepageimages/beelicon.svg"),
                      ],
                    ),
                    //
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 187),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    Customtext(
                        text: "Total Expense",
                        textfontSize: 16,
                        textcolor: Color(0xff666666),
                        textfontweight: FontWeight.w400),
                    SizedBox(height: 12),
                    Customtext(
                        text: "₹2,548.00",
                        textfontSize: 30,
                        textcolor: Colors.black,
                        textfontweight: FontWeight.w700),
                    SvgPicture.asset("asset/svg/Wallet/addbutton.svg"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
