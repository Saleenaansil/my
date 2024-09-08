import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase/Screen/widgets/customtext.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key, });
  // final String email;
  // final String password;
  final List<Map> transactionHistory = [
    {
      "profilepic":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUh5yblOeekiOQSLLQdBLUDFSYRZGDs93qSg&s",
      "name": "Upwork ",
      "Date": "Today",
      "Amount": "₹850.00",
    },
    {
      "profilepic":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUh5yblOeekiOQSLLQdBLUDFSYRZGDs93qSg&s",
      "name": "Transfer ",
      "Date": "Yesterday",
      "Amount": "₹85.00",
    },
    {
      "profilepic":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUh5yblOeekiOQSLLQdBLUDFSYRZGDs93qSg&s",
      "name": "Paypal",
      "Date": "Jan 30, 2022",
      "Amount": "₹1406.00",
    },
    {
      "profilepic":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUh5yblOeekiOQSLLQdBLUDFSYRZGDs93qSg&s",
      "name": "Youtube ",
      "Date": "Jan 16, 2022",
      "Amount": "₹11.9",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
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
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Customtext(
                              text: "Good afternoon,",
                              textfontSize: 14,
                              textcolor: Colors.white,
                              textfontweight: FontWeight.w500,
                            ),
                            Customtext(
                                text: "Enjelin Morgeana",
                                textfontSize: 20,
                                textcolor: Colors.white,
                                textfontweight: FontWeight.w500)
                          ],
                        ),
                        SvgPicture.asset(
                          "asset/svg/Homepageimages/beelicon.svg",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 155,
              left: 20,
              right: 20,
              //bottom: 540,
              child: Container(
                  height: 201.99,
                  width: 374,
                  decoration: BoxDecoration(
                    color: Color(0xff2F7E79),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Customtext(
                                text: "Total Balance",
                                textfontSize: 16,
                                textcolor: Color(0xffFFFFFF),
                                textfontweight: FontWeight.w600),
                            SvgPicture.asset(
                                "asset/svg/Homepageimages/upperarrow.svg"),
                            Spacer(),
                            SvgPicture.asset(
                                "asset/svg/Homepageimages/menu.svg")
                          ],
                        ),
                        Customtext(
                          text: "₹2,548.00",
                          textfontSize: 30,
                          textcolor: Color(0xffFFFFFF),
                          textfontweight: FontWeight.w700,
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "asset/svg/Homepageimages/icomeicon.svg"),
                                    Customtext(
                                        text: "Income",
                                        textfontSize: 16,
                                        textcolor: Color(0xffFFFFFF),
                                        textfontweight: FontWeight.w500),
                                  ],
                                ),
                                Customtext(
                                    text: "₹1,840.00",
                                    textfontSize: 20,
                                    textcolor: Colors.white,
                                    textfontweight: FontWeight.w600)
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "asset/svg/Homepageimages/expenseicon.svg"),
                                    Customtext(
                                        text: "Expenses",
                                        textfontSize: 18,
                                        textcolor: Color(0xffFFFFFF),
                                        textfontweight: FontWeight.w500)
                                  ],
                                ),
                                Customtext(
                                    text: "₹ 284.00",
                                    textfontSize: 20,
                                    textcolor: Colors.white,
                                    textfontweight: FontWeight.w600)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Customtext(
                      text: "transactions History",
                      textfontSize: 18,
                      textcolor: Colors.black,
                      textfontweight: FontWeight.w600),
                  Spacer(),
                  Customtext(
                      text: "See all",
                      textfontSize: 14,
                      textcolor: Color(0xff666666),
                      textfontweight: FontWeight.w400)
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20), // Add some space before the ListView
        Container(
          height: 250,
          child: ListView.builder(
            itemCount: transactionHistory.length, // Number of items in the list
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(transactionHistory[index]["profilepic"]),
                ),
                title: Text(transactionHistory[index]["name"]),
                subtitle: Text(transactionHistory[index]["Date"]),
                trailing: Text(transactionHistory[index]["Amount"]),
              );
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            children: [
              Customtext(
                  text: "Send Again",
                  textfontSize: 18,
                  textcolor: Colors.black,
                  textfontweight: FontWeight.w600),
              Spacer(),
              Customtext(
                  text: "See all",
                  textfontSize: 14,
                  textcolor: Color(0xff666666),
                  textfontweight: FontWeight.w400)
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Container(
            height: 62,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.84),
                  child: CircleAvatar(
                    radius: 31,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUh5yblOeekiOQSLLQdBLUDFSYRZGDs93qSg&s",
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        )
      ],
    )));
  }
}
