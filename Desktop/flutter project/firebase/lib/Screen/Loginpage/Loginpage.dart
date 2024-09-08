import 'dart:developer';

import 'package:firebase/Screen/Loginpage/Registerpage.dart';
import 'package:firebase/Screen/NavBarcontroller/navBarcontrollingpage.dart';
import 'package:firebase/Screen/onboarding/Onboardingpage.dart';
import 'package:firebase/Screen/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:firebase/Screen/Homepage/Homepage.dart';
import 'package:firebase/Services/Authentication.dart';
import 'package:firebase/Services/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: "username"),
            ),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(hintText: "password"),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      SharedPreferences sharedpref =
                          await SharedPreferences.getInstance();

                      String loginstatus = await AuthenticationServices()
                          .loginuser(
                              emailController.text, passwordController.text);

                      Services().showsnackbar(context, loginstatus);
                      if (loginstatus == "login success") {
                        sharedpref.setBool("loginStatus", true);
                        Get.off(() => Navbarcontrollingpage());

                        // Navigator.of(context).push(
                        //   MaterialPageRoute(builder: (context) {
                        //     return Homepage(
                        //       email: emailController.text,
                        //       password: passwordController.text,
                        //     );
                        //
                        // }),
                        //);
                      } else {
                        print("Error when login");
                      }
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Customtext(
                    text: "Dont Have an Account",
                    textfontSize: 12,
                    textcolor: Colors.black54,
                    textfontweight: FontWeight.w600),
                InkWell(
                  onTap: () {
                    Get.to(Registerpage());
                  },
                  child: Customtext(
                      text: "Create",
                      textfontSize: 12,
                      textcolor: Colors.blue,
                      textfontweight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
