import 'package:flutter/material.dart';

import '../../../../../utils/theme/colors_theme_data.dart';

class OTPForm extends StatelessWidget {
  const OTPForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: MyColors.primaryColor,
        keyboardType: TextInputType.number,
        controller: TextEditingController(),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Name is Required";
          } else
            return null;
        },
        decoration: InputDecoration(
          filled: false,
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: MyColors.primaryColor), // Change the color as needed
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: MyColors.text_field_color), //
          ),
        ));
    ;
  }
}
