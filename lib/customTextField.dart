import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String? hintText;
  final TextEditingController controller;
  final Widget? suffixIcon;

  const CustomTextField(
      {Key? key,
      required this.obscureText,
      this.hintText,
      required this.controller,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Color(0xff424242),
      ),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide.none),
          hintText: hintText ?? "",
          hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 17),
          suffixIcon: suffixIcon ?? Text("")),
      controller: controller,
    );
  }
}
