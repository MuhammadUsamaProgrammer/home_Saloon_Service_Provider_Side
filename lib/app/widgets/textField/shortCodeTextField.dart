import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/auth/provider/auth_provider.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:provider/provider.dart';

import '../../localization/keys/codegen_loader.g.dart';

class ShortCodeTextField extends StatelessWidget {
  ShortCodeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, value, child) {
        return Form(
          key: value.formKey,
          child: TextFormField(
              cursorColor: MyColors.primaryColor,
              keyboardType: TextInputType.visiblePassword,
              controller: value.shortCodeTextController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Short code is Required";
                } else
                  return null;
              },
              decoration: InputDecoration(
                filled: false,
                hintText: LocaleKeys.enter_your_shortcode.tr(),
                hintStyle: TextStyle(color: MyColors.text_field_color),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          MyColors.primaryColor), // Change the color as needed
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: MyColors.text_field_color), //
                ),
              )),
        );
      },
    );
  }
}
