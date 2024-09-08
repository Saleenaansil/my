import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase/Screen/statistics/StaticWidge.dart';
import 'package:firebase/Screen/widgets/customtext.dart';

class Statistics extends StatelessWidget {
  Statistics({super.key});
  final List topSpendingList = [
    {
      "icon": "asset/svg/StatisticsItem/starbucks.svg",
      "name": "Starbucks",
      "Date": "Jan 12, 2022",
      "Amount": "- ₹150.00"
    },
    {
      "icon": "asset/svg/StatisticsItem/transfer.svg",
      "Date": "Yesterday",
      "name": "Transfer",
      "Amount": "- ₹150.00"
    },
    {
      "icon": "asset/svg/StatisticsItem/youtube.svg",
      "name": "Youtube",
      "Date": "Jan 16, 2022",
      "Amount": "- ₹150.00"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Customtext(
                text: "Top Spending",
                textfontSize: 18,
                textcolor: Color(0xff222222),
                textfontweight: FontWeight.w600),
            Spacer(),
            SvgPicture.asset("asset/svg/StatisticsItem/topSpending.svg"),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Staticwidge(transferDetails: topSpendingList[index]);
            },
            itemCount: topSpendingList.length,
          ),
        )
      ],
    ));
  }
}
