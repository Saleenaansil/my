import 'package:flutter/material.dart';

class Services {
  showsnackbar(BuildContext context,String message) {
    final snackbar = SnackBar(
      content: Text(
        message,
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
