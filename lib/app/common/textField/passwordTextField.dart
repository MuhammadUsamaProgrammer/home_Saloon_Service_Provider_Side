import 'package:flutter/material.dart';

class PasswordTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  // final bool abscureText;
  final String labelText;

  const PasswordTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    // required this.abscureText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // obscureText: value.abscur,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Password is Required";
        } else if (value.length < 6) {
          return "Minimum length 6";
        }
        return null;
      },
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
              onTap: () {
                // vibrate();
                // value.toogleAbscur();
              },
              child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 200),
                  child:
                      // value.abscur
                      //     ?
                      Icon(
                    Icons.visibility_off_outlined,
                    key: UniqueKey(),
                    color: Colors.black54,
                  )
                  // : Icon(
                  //     Icons.remove_red_eye_outlined,
                  //     key: UniqueKey(),
                  //     color: Colors.blue,
                  //   ),
                  )),
          // enabledBorder: ,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff999999)),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
              borderRadius: BorderRadius.circular(10)),
          filled: false,
          // hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(color: Color(0xff999999)),
          hintStyle: TextStyle(color: Color(0xff999999)),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          // alignLabelWithHint: false,
          floatingLabelBehavior: FloatingLabelBehavior.never),
    );
  }
}
