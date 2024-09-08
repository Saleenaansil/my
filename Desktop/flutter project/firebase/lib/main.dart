import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase/Screen/Addexpense/Addexpense.dart';
import 'package:firebase/Screen/Billpayment/billpayment.dart';
import 'package:firebase/Screen/Loginpage/Loginpage.dart';
import 'package:firebase/Screen/NavBarcontroller/navBarcontrollingpage.dart';
import 'package:firebase/Screen/NavBarcontroller/widgets/bottomnavbar.dart';
import 'package:firebase/Screen/Wallet/Wallet.dart';
import 'package:firebase/Screen/onboarding/Onboardingpage.dart';
import 'package:firebase/Screen/profile/profile.dart';
import 'package:firebase/Screen/slashpage/splashpage.dart';
import 'package:firebase/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      title: 'Flutter Demo',
      home: Splashpage(),
      //  home: Navbarcontrollingpage(),
      // home: Addexpense(),
      // home: Onboardingpage(),
      //  home: Wallet(),
      //home: Profile(),
      // home: Billpayment()

      //home: Loginpage(),
    );
  }
}
