import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:home_saloon/app/screens/auth/provider/auth_provider.dart';
import 'package:home_saloon/app/widgets/vibrate/vibrate.dart';
import 'package:provider/provider.dart';

class ResendButton extends StatelessWidget {
  const ResendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<AuthProvider>(
          builder: (context, value, child) {
            return GestureDetector(
              onTap: () {
                if (value.resend == true) {
                  vibrate();
                  value.login();
                }
                ;
              },
              child: Text('RESEND',
                  style: value.resend == true
                      ? MyTextStyle.resend_OTP_Active(context)
                      : MyTextStyle.resend_OTP_InActive(context)),
            );
          },
        )
      ],
    );
  }
}
