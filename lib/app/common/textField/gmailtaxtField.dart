import 'package:flutter/material.dart';

class GmailTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool abscureText;
  final String labelText;
  const GmailTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.abscureText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: abscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Email is required";
        } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value)) {
          return 'Please enter valid Email';
        }
        return null;
      },
      decoration: InputDecoration(
          // enabledBorder
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff999999)),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
              borderRadius: BorderRadius.circular(10)),
          filled: false,
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(color: Color(0xff999999)),
          hintStyle: TextStyle(color: Color(0xff999999)),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          floatingLabelBehavior: FloatingLabelBehavior.never),
    );
  }
}
