import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/theme/text_Theme_Data.dart';
import '../provider/oTP_timer_Provider.dart';

class ResendButton extends StatelessWidget {
  const ResendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<OTPTimerProvider>(
          builder: (context, value, child) {
            return GestureDetector(
              onTap: () {
                value.seconds == 0 ? value.startTimer() : null;
              },
              child: Text('RESEND',
                  style: value.seconds == 0
                      ? MyTextStyle.resend_OTP_Active(context)
                      : MyTextStyle.resend_OTP_InActive(context)),
            );
          },
        )
      ],
    );
  }
}
