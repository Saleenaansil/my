import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationServices {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String> loginuser(String email, String password) async {
    try {
      log("email in signin function${email}");

      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      log(email);
      return "login success";
    } on FirebaseAuthException catch (e) {
      log("error when login $e ");
      return e.toString();
    }
  }

  registeruser(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      log("${userCredential.user}");
      String? userId = userCredential.user?.uid;
      if (userId != null) {
        await FirebaseFirestore.instance
            .collection("users")
            .doc(userId)
            // .collection("Expense")
            // .doc()
            .set({
              "Expense":[],
              "Income":[],
            });
       
      }
      return "register success";
    } on FirebaseAuthException catch (e) {
      log("error when signup $e ");
      return e.toString();
    }
  }

  loginWithGoogle() async {
    try {
      final user = await GoogleSignIn().signIn();
      log(user.toString());
      if (user != null) {
        final googleAuth = await user.authentication;
        final credential = GoogleAuthProvider.credential(
            idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
        final userCredential =
            await firebaseAuth.signInWithCredential(credential);
        final userDetails = userCredential.user;
      }
    } on FirebaseAuthException catch (e) {
      log(e.toString());
    }
  }
}
