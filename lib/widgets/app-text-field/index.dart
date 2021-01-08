import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final double fontSize;
  final FontWeight fontWeight;
  final bool roundedBorder;
  const AppTextField({
    Key key,
    this.hintText,
    this.roundedBorder: false,
    this.fontWeight: FontWeight.normal,
    this.fontSize: 12,
    this.obscureText: false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: hintText,
        border: roundedBorder ? OutlineInputBorder() : UnderlineInputBorder(),
        labelStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
