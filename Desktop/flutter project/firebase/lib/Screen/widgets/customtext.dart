import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  const Customtext(
      {super.key,
      required this.text,
      required this.textfontSize,
      required this.textcolor,
      required this.textfontweight,
       this.textallignment});
  final String text;
  final double textfontSize;
  final Color textcolor;
  final FontWeight textfontweight;
  final TextAlign? textallignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: textfontweight,
        color: textcolor,
        fontSize: textfontSize,
      ),

      textAlign: textallignment,
    );
  }
}
