import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

class FeedbackTextField extends StatelessWidget {
  final TextEditingController controller;
  const FeedbackTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: false,
      maxLines: 8,
      cursorColor: MyColors.primaryColor,
      style: MyTextStyle.type_Your_Message_Text(context),
      decoration: InputDecoration(
        fillColor: MyColors.feedback_TextField_Color,
        filled: true,
        hintText: LocaleKeys.Type_your_message.tr(),
        hintStyle: MyTextStyle.type_Your_Message_Hint(context),
        contentPadding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 27),
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
