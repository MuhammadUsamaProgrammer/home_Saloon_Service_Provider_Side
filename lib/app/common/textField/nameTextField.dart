import 'package:flutter/material.dart';

class NameTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool abscureText;
  final String labelText;

  const NameTextField({
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
          return "Name is Required";
        } else if (value.length > 20) {
          return "Name should not exceed 20 letters";
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
