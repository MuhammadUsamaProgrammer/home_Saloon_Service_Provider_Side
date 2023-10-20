import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/buttons/textButton.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import '../components/back_Ground_Image.dart';
import '../components/oTP_Form1.dart';

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
            physics: BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast,
            ),
            child: Column(
              children: [
                heightC(201),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
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
                            style: AppTextStyle.enter_OTP,
                          ),
                          heightC(44),
                          // textfield heading
                          Text(
                            LocaleKeys.shortcode.tr(),
                            style: AppTextStyle.shortCode,
                          ),
                          heightC(15),
                          // text field
                          OTPForm(),
                          heightC(22),
                          // stay loggedin
                          heightC(42),
                          // Button
                          Button1(
                            text: LocaleKeys.login.tr(),
                            onTap: () {},
                          )
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
