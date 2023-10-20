import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/authentication/short_Code_Screen/provider/shortCode_Controller_Provider.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:provider/provider.dart';

import '../../../utils/localization/keys/codegen_loader.g.dart';

class ShortCodeTextField extends StatelessWidget {
  ShortCodeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ShortCodeControllerProvider>(
      builder: (context, value, child) {
        return Form(
          key: value.formKey,
          child: TextFormField(
              cursorColor: MyColors.primaryColor,
              keyboardType: TextInputType.number,
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
