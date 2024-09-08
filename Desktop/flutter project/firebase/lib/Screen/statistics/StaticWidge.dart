import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase/Screen/widgets/customtext.dart';

class Staticwidge extends StatelessWidget {
  const Staticwidge({
    super.key,
    required this.transferDetails,
    // required this.amount,
    // required this.icon,
    // required this.day
  });
  //final String icon;

  final Map transferDetails;
  // final DateTime day;
  // final double amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(transferDetails["icon"]),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Customtext(
                  text: transferDetails["name"],
                  textfontSize: 16,
                  textcolor: Color(0xff000000),
                  textfontweight: FontWeight.w500),
              Customtext(
                  text: transferDetails["Date"],
                  textfontSize: 13,
                  textcolor: Color(0xff666666),
                  textfontweight: FontWeight.w400),
            ],
          ),
          Spacer(),
          Customtext(
              text: transferDetails["Amount"],
              textfontSize: 18,
              textcolor: Color(0xffF95B51),
              textfontweight: FontWeight.w600)
        ],
      ),
    );
  }
}
