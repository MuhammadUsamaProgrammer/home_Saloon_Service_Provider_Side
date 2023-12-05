import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/core/cache/get_shared_pref.dart';
import 'package:home_saloon/app/core/routes/app_route_const.dart';
import 'package:home_saloon/app/screens/auth/provider/auth_provider.dart';
import 'package:home_saloon/app/screens/editProfile_Screen/provider/edit_Profile_Details_Provider.dart';
import 'package:home_saloon/app/widgets/buttons/textButton.dart';
import 'package:home_saloon/app/widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/widgets/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../../../localization/keys/codegen_loader.g.dart';
import '../components/back_Ground_Image.dart';
import '../components/oTP_Field.dart';
import '../components/oTP_Timer.dart';
import '../components/resed_Button.dart';

class OTPScreen extends StatelessWidget with SharedPrefGet {
  const OTPScreen({super.key});

  // OTPTimerProvider myModel = OTPTimerProvider();
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
                          heightC(44),
                          // Heading Text
                          Text(
                            LocaleKeys.enter_OTP.tr(),
                            style: MyTextStyle.enter_OTP(context),
                          ),
                          // Heading Text
                          Text(
                            'An OTP is Sent to your Email. Enter a 4 Digit Code that is sent to your email.',
                            style: MyTextStyle.Tile_Text_content(context),
                          ),
                          heightC(20),
                          // text field
                          OTPField(),
                          heightC(23),
                          // resend otp
                          ResendButton(),
                          heightC(54),
                          // Button
                          Consumer2<AuthProvider, EditProfileDetailsProvider>(
                            builder:
                                (context, authProvider, profileDetails, child) {
                              if (authProvider.isWaiting == true ||
                                  profileDetails.isWaiting == true) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      color: MyColors.primaryColor,
                                    ),
                                  ],
                                );
                              } else {
                                return authProvider.isAllOTPFilled
                                    ? Button1(
                                        text: LocaleKeys.login.tr(),
                                        onTap: () async {
                                          if (await authProvider.oTPAPI() &&
                                              await profileDetails
                                                  .getUserData()) {
                                            authProvider.activateStayLogin();
                                            context.goNamed(MyRoutes.mainPage);
                                          }
                                          ;
                                        },
                                      )
                                    : Button1(
                                        text: LocaleKeys.login.tr(),
                                        isActive: false,
                                        color: MyColors.text_field_color,
                                        onTap: () {},
                                      );
                              }
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
