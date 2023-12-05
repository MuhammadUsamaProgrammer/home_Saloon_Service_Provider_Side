import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';

class EditProfileTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final TextCapitalization textCapitalization;
  const EditProfileTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.textInputType = TextInputType.name,
    this.textCapitalization = TextCapitalization.words,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: textCapitalization,
      keyboardType: textInputType,
      obscureText: false,
      cursorColor: MyColors.primaryColor,
      style: MyTextStyle.type_Your_Message_Text(context),
      decoration: InputDecoration(
        fillColor: MyColors.backgroundColor,
        filled: true,
        hintText: hintText,
        hintStyle: MyTextStyle.type_Your_Message_Hint(context),
        contentPadding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 30),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(2.0),
        ),
      ),
    );
  }
}
