import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/Screen/Addexpense/Addexpense.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Databaseservies {
  final user = FirebaseAuth.instance.currentUser;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;
  addExpenseToDatabase(Map<String, dynamic> expenseItem) async {
    try {
      if (user != null) {
        String userId = user!.uid;

        await fireStore.collection("users").doc(userId).update({
          "Expense": FieldValue.arrayUnion([expenseItem])
        });
      }
    } catch (e) {
      print("error $e");
    }
  }

  addIncomeToDatabase(Map<String, dynamic> incomeItem) async {
    try {
      if (user != null) {
        String userId = user!.uid;

        await fireStore.collection("users").doc(userId).update({
          "Income": FieldValue.arrayUnion([incomeItem])
        });

        //await getDocuments.set(expenseItem);
      }
    } catch (e) {
      print("error $e");
    }
  }
}
