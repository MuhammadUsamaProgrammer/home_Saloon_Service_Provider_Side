import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/theme/text_Theme_Data.dart';
import '../provider/oTP_timer_Provider.dart';

class OTPTimer extends StatelessWidget {
  const OTPTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<OTPTimerProvider>(
          builder: (context, value, child) {
            return Text(
              value.seconds > 9
                  ? '00:' + value.seconds.toString()
                  : '00:0' + value.seconds.toString(),
              style: AppTextStyle.timer_OTP(context),
            );
          },
        )
      ],
    );
  }
}
