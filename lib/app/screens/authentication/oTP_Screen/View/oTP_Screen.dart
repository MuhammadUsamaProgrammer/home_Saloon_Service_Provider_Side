import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/common/buttons/textButton.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/screens/authentication/oTP_Screen/provider/oTP_timer_Provider.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../components/back_Ground_Image.dart';
import '../components/oTP_Field.dart';
import '../components/oTP_Timer.dart';
import '../components/resed_Button.dart';
import '../provider/oTP_Controller_Provider.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,s
      body: Stack(
        children: [
          // BackGround Image
          BackGroundImageOTPScreen(),
          // Front screen(textfields, buttons etc)
          SingleChildScrollView(
            child: Column(
              children: [
                heightC(201),
                Container(
                  height: context.MediaQueryHeight() < 500
                      ? 510
                      : context.MediaQueryHeight(),
                  width: context.MediaQueryWidth(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: MyColors.backgroundColor,
                  ),
                  // padding of just inner content
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(38, 50, 38, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          heightC(50),
                          // Heading Text
                          Text(
                            LocaleKeys.enter_OTP.tr(),
                            style: MyTextStyle.enter_OTP(context),
                          ),
                          heightC(44),
                          // text field
                          OTPField(),
                          heightC(23),
                          // resend otp
                          ResendButton(),
                          heightC(54),
                          // Button
                          Consumer<OTPControllerProvider>(
                            builder: (context, value, child) {
                              return value.isAllOTPFilled
                                  ? Consumer<OTPTimerProvider>(
                                      builder: (context, value, child) {
                                        return Button1(
                                          text: LocaleKeys.login.tr(),
                                          onTap: () {
                                            GoRouter.of(context)
                                                .goNamed(MyRoutes.mainPage);
                                            value.dispose();
                                          },
                                        );
                                      },
                                    )
                                  : Button1(
                                      text: LocaleKeys.login.tr(),
                                      isActive: false,
                                      color: MyColors.text_field_color,
                                      onTap: () {},
                                    );
                            },
                          ),
                          heightC(19),
                          // Timer
                          OTPTimer(),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
