import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase/Screen/profile/widgets/profileTile.dart';
import 'package:firebase/Screen/widgets/customtext.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final List profileItems = [
    {
      "Image": "asset/svg/profileimages/accountinfo.svg",
      "name": "Account info"
    },
    {
      "Image": "asset/svg/profileimages/personalprofile.svg",
      "name": "personal profile"
    },
    {
      "Image": "asset/svg/profileimages/messagecenter.svg",
      "name": "Message center"
    },
    {
      "Image": "asset/svg/profileimages/loginandsecurity.svg",
      "name": "Login and security"
    },
    {
      "Image": "asset/svg/profileimages/Dataandprivacy.svg",
      "name": "Data and privacy"
    }
  ];

  @override
  Widget build(BuildContext context) {
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
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 211,
                  left: 147,
                  right: 147,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // height: 120,
                        // width: 120,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                '',
                              ),
                            ),
                            SizedBox(height: 20),
                            Customtext(
                                text: "Enjelin Morgeana",
                                textfontSize: 20,
                                textcolor: Colors.black,
                                textfontweight: FontWeight.w600),
                            Customtext(
                                text: "@enjelin_morgeana",
                                textfontSize: 14,
                                textcolor: Color(0xff438883),
                                textfontweight: FontWeight.w600)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 124),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 116, left: 32.25),
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: profileItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Profiletile(
                        iconPath: profileItems[index]["Image"],
                        label: profileItems[index]["name"],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
