import 'package:flutter/material.dart';
import 'package:firebase/Screen/widgets/customtext.dart';

class Custombutton extends StatelessWidget {
  const Custombutton(
      {super.key,
      required this.text,
      required this.textfontSize,
      required this.textcolor,
      required this.textfontweight,
      required this.height,
      required this.width,
      this.applyGradientColor = false,
      this.buttoncolor,
      this.gradientColor1,
      this.gradientColor2,
      required this.borderRadius,
      this.onTap});
  final String text;
  final double textfontSize;
  final Color textcolor;
  final FontWeight textfontweight;
  final double height;
  final double width;
  final bool applyGradientColor;
  final Color? buttoncolor;
  final Color? gradientColor1;
  final Color? gradientColor2;
  final double borderRadius;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: applyGradientColor ? null : buttoncolor,
              gradient: applyGradientColor
                  ? LinearGradient(
                      colors: [gradientColor1!, gradientColor2!],
                    )
                  : null,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Center(
            child: Customtext(
                text: text,
                textfontSize: textfontSize,
                textcolor: textcolor,
                textfontweight: textfontweight),
          )),
    );
  }
}
