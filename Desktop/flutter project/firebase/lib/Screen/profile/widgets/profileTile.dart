import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase/Screen/widgets/customtext.dart';

class Profiletile extends StatelessWidget {
  const Profiletile({super.key, required this.iconPath, required this.label});
  final String iconPath;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconPath),
        SizedBox(
          width: 20,
        ),
        Customtext(
            text: label,
            textfontSize: 16,
            textcolor: Colors.black,
            textfontweight: FontWeight.w500)
      ],
    );
  }
}
