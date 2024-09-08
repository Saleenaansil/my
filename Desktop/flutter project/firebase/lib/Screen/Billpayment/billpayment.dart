import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase/Core/Colors.dart';
import 'package:firebase/Screen/widgets/customtext.dart';

class Billpayment extends StatelessWidget {
  const Billpayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 212,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: mainAppColor,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child:
                      SvgPicture.asset("asset/svg/billpayment/billpayment.svg"),
                ),
                SizedBox(
                  height: 15,
                ),
                Customtext(
                    text: "Added Successfully",
                    textfontSize: 22,
                    textcolor: Color(0xff438883),
                    textfontweight: FontWeight.w600),
                SizedBox(
                  height: 8,
                ),
                Customtext(
                    text: "Youtube Premium",
                    textfontSize: 16,
                    textcolor: Color(0xff666666),
                    textfontweight: FontWeight.w500),
              ],
            ),
            Row(
              children: [
                Customtext(
                    text: "Transaction details",
                    textfontSize: 18,
                    textcolor: Color(0xff000000),
                    textfontweight: FontWeight.w500),
                Spacer(),
                SvgPicture.asset("asset/svg/billpayment/upperarrow.svg"),
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Customtext(
                        text: "Payment method",
                        textfontSize: 16,
                        textcolor: Color(0xff666666),
                        textfontweight: FontWeight.w500),
                    Spacer(),
                    Customtext(
                        text: "Debit Card",
                        textfontSize: 16,
                        textcolor: Colors.black,
                        textfontweight: FontWeight.w500),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Customtext(
                        text: "Status",
                        textfontSize: 19,
                        textcolor: Color(0xff666666),
                        textfontweight: FontWeight.w500),
                    Spacer(),
                    Customtext(
                        text: "Completed",
                        textfontSize: 16,
                        textcolor: Color(0xff438883),
                        textfontweight: FontWeight.w500),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Customtext(
                        text: "Time",
                        textfontSize: 19,
                        textcolor: Color(0xff666666),
                        textfontweight: FontWeight.w500),
                    Spacer(),
                    Customtext(
                        text: "08:15 AM",
                        textfontSize: 16,
                        textcolor: Color(0xff000000),
                        textfontweight: FontWeight.w500),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Customtext(
                        text: "Date",
                        textfontSize: 19,
                        textcolor: Color(0xff666666),
                        textfontweight: FontWeight.w500),
                    Spacer(),
                    Customtext(
                        text: "Feb 28, 2022",
                        textfontSize: 16,
                        textcolor: Color(0xff000000),
                        textfontweight: FontWeight.w500),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Customtext(
                        text: "Transaction ID",
                        textfontSize: 19,
                        textcolor: Color(0xff666666),
                        textfontweight: FontWeight.w500),
                    Spacer(),
                    Customtext(
                        text: "2092913832472..",
                        textfontSize: 16,
                        textcolor: Color(0xff000000),
                        textfontweight: FontWeight.w500),
                    SvgPicture.asset("asset/svg/billpayment/copybtton.svg")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 354,
              height: 1,
              color: Color(0xffDDDDDD),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Customtext(
                        text: "Price",
                        textfontSize: 16,
                        textcolor: Color(0xff666666),
                        textfontweight: FontWeight.w500),
                    Spacer(),
                    Customtext(
                        text: " 11.99",
                        textfontSize: 16,
                        textcolor: Color(0xff000000),
                        textfontweight: FontWeight.w500),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Customtext(
                        text: "Fee",
                        textfontSize: 16,
                        textcolor: Color(0xff666666),
                        textfontweight: FontWeight.w500),
                    Spacer(),
                    Customtext(
                        text: " -  1.99",
                        textfontSize: 16,
                        textcolor: Color(0xff000000),
                        textfontweight: FontWeight.w500),
                  ],
                )
              ],
            ),
            Container(
              width: 354,
              height: 1,
              color: Color(0xffDDDDDD),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Customtext(
                        text: "Total",
                        textfontSize: 16,
                        textcolor: Color(0xff666666),
                        textfontweight: FontWeight.w500),
                    Spacer(),
                    Customtext(
                        text: " 13.98",
                        textfontSize: 16,
                        textcolor: Color(0xff000000),
                        textfontweight: FontWeight.w500),
                  ],
                )
              ],
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff549994),
                // gradient: LinearGradient(
                //   colors: [
                //     Color(0xff549994),
                //     Color(0xff408782),
                //   ],
                // ),
                //border: Border.all(width: 1, color: Color(0xff408782)),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Container(
                  height: 58,
                  width: 348,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xff408782))),
                  child: Center(
                    child: Customtext(
                        text: "Share receipt",
                        textfontSize: 18,
                        textcolor: Color(0xff438883),
                        textfontweight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
