import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.iconData,
      required this.controller,
      required this.keyBoardType,
        required this.obscure,

      }
      );

  final String label;
  final IconData iconData;
  final TextEditingController controller;
  final TextInputType keyBoardType;
  final bool obscure;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label), // first paramter iam need
        prefixIcon: Icon(iconData), // icondata need
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.blue)),
      ),
      controller: controller, // need (TextEditController)
      keyboardType: keyBoardType, // need (TextInputType)
      validator: (value) {
        if (value == null) {
          return "PLS Enter Your Value";
        }
      },
      obscureText: obscure,
    );
  }
}
