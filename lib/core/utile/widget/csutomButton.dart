import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      required this.name,
      required this.w,
      required this.borderRadius,
      required this.h,
      required this.onPress,
      required this.colorButton,
        required this.colorText,
        required this.sizeText});

  final String name;
  final double w;
  final double borderRadius;
  final double h;
  final Function() onPress;
  final Color colorButton;
  final Color colorText;
  final double sizeText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, // function
      child: Container(
        decoration: BoxDecoration(
            color: colorButton, borderRadius: BorderRadius.circular(borderRadius)),
        width: w,
        height:  h,
        child: Center(child: Text(name, style: TextStyle(fontSize: sizeText, color: colorText),)), // name of bottom
      ),
    );
  }
}
