import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool enabled;
  final bool obscureText;
  final InputDecoration inputDecoration;

  const CustomTextField({
    Key? key,
    required this.enabled,
    required this.obscureText,
    required this.inputDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      obscureText: obscureText,
      style: TextStyle(
        color: Color(0xff424242),
      ),
      decoration: inputDecoration,
    );
  }
}

const kInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide.none),
    hintText: "",
    hintStyle: TextStyle(color: Color(0xff424242), fontSize: 17));
