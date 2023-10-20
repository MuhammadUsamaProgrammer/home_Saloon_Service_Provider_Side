import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../common/textField/oTP_Text_Form_Field.dart';
import '../provider/oTP_Controller_Provider.dart';

class OTPField extends StatelessWidget {
  const OTPField({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OTPControllerProvider>(builder: (context, value, child) {
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
