import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/common/buttons/textButton.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/textField/shortCodeTextField.dart';
import 'package:home_saloon/app/screens/authentication/oTP_Screen/provider/oTP_timer_Provider.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../components/back_Ground_Image.dart';
import '../components/stay_Loggedin.dart';
import '../provider/shortCode_Controller_Provider.dart';

class ShortCodeScreen extends StatelessWidget {
  ShortCodeScreen({super.key});
  // final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BackGround Image
          ShortCodeBackGroundImage(),
          // Front screen(textfields, buttons etc)
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                            LocaleKeys.Continue_with_shortcode.tr(),
                            style:
                                AppTextStyle.continue_With_ShortCode(context),
                          ),
                          heightC(44),
                          // textfield heading
                          Text(
                            LocaleKeys.shortcode.tr(),
                            style: AppTextStyle.shortCode(context),
                          ),
                          heightC(15),
                          // text field
                          ShortCodeTextField(),
                          heightC(22),
                          // stay loggedin
                          stayLoggedin(),
                          heightC(42),
                          // Button
                          Consumer<ShortCodeControllerProvider>(
                            builder: (context, shortCode, child) {
                              return Consumer<OTPTimerProvider>(
                                builder: (context, otp, child) {
                                  return Button1(
                                    text: LocaleKeys.login.tr(),
                                    onTap: () {
                                      if (shortCode.formKey.currentState!
                                          .validate()) {
                                        otp.seconds == 0
                                            ? otp.startTimer()
                                            : null;
                                        GoRouter.of(context)
                                            .pushNamed(MyRoutes.oTPScreen);
                                        shortCode.shortCodeTextController
                                            .clear();
                                      }
                                    },
                                  );
                                },
                              );
                            },
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
