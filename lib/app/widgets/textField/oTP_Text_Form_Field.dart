import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_saloon/app/screens/auth/provider/auth_provider.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:provider/provider.dart';

class OTPFormField extends StatelessWidget {
  final TextEditingController controller;
  const OTPFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, value, child) {
        return Container(
          width: 60,
          child: TextFormField(
              style: Theme.of(context).textTheme.headlineLarge,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              onChanged: (fieldValue) {
                fieldValue.isNotEmpty
                    ? FocusScope.of(context).nextFocus()
                    : FocusScope.of(context).previousFocus();
                value.toogleisAllOTPFilled();
              },
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              cursorColor: MyColors.primaryColor,
              controller: controller,
              decoration: InputDecoration(
                filled: false,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color:
                          MyColors.primaryColor), // Change the color as needed
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: controller.text.isEmpty
                          ? MyColors.text_field_color
                          : MyColors.primaryColor), //
                ),
              )),
        );
      },
    );
    //   },
    // );
  }
}
