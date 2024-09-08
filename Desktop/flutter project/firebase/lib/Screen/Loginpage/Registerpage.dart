import 'package:firebase/Screen/Homepage/Homepage.dart';
import 'package:firebase/Screen/NavBarcontroller/navBarcontrollingpage.dart';
import 'package:firebase/services/authentication.dart';
import 'package:firebase/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registerpage extends StatelessWidget {
  Registerpage({super.key});
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(hintText: "username"),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
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
                      String loginstatus = await AuthenticationServices()
                          .registeruser(
                              usernameController.text, passwordController.text);
                      Services().showsnackbar(context, loginstatus);
                      if (loginstatus == "register success") {
                        SharedPreferences sharedpref =
                            await SharedPreferences.getInstance();

                        sharedpref.setBool("loginStatus", true);
                        Get.off(() => Navbarcontrollingpage());
                      } else {
                        print("Error when login");
                      }
                    },
                    child: Text('Signup'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
