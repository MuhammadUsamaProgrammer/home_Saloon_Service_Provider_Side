import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/auth/provider/auth_provider.dart';
import 'package:provider/provider.dart';
import '../../../widgets/textField/oTP_Text_Form_Field.dart';

class OTPField extends StatelessWidget {
  const OTPField({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, value, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OTPFormField(
            controller: value.pin1,
          ),
          OTPFormField(
            controller: value.pin2,
          ),
          OTPFormField(
            controller: value.pin3,
          ),
          OTPFormField(
            controller: value.pin4,
          ),
        ],
      );
    });
  }
}
