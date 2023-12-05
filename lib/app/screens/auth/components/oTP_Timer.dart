import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:home_saloon/app/screens/auth/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class OTPTimer extends StatelessWidget {
  const OTPTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<AuthProvider>(
          builder: (context, value, child) {
            return Text(
              value.seconds > 9
                  ? '00:' + value.seconds.toString()
                  : '00:0' + value.seconds.toString(),
              style: value.seconds != 0
                  ? MyTextStyle.timer_OTP_Active(context)
                  : MyTextStyle.timer_OTP_Inactive(context),
            );
          },
        )
      ],
    );
  }
}
