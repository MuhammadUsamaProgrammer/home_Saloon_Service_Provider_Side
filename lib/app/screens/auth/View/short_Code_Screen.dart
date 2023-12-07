import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/core/routes/app_route_const.dart';
import 'package:home_saloon/app/widgets/buttons/textButton.dart';
import 'package:home_saloon/app/widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/widgets/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/widgets/textField/shortCodeTextField.dart';
import 'package:home_saloon/app/widgets/toast_message/toast_message.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../../../localization/keys/codegen_loader.g.dart';
import '../components/shortcode_back_Ground_Image.dart';
import '../components/stay_Loggedin.dart';
import '../provider/auth_provider.dart';

// ignore: must_be_immutable
class ShortCodeScreen extends StatefulWidget {
  ShortCodeScreen({super.key});

  @override
  State<ShortCodeScreen> createState() => _ShortCodeScreenState();
}

class _ShortCodeScreenState extends State<ShortCodeScreen> {
  DateTime? lastPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          final now = DateTime.now();
          final maxDuration = Duration(seconds: 2);
          final isWarning =
              lastPressed == null || now.difference(lastPressed!) > maxDuration;

          if (isWarning) {
            lastPressed = DateTime.now();
            showToastMessage('Double tap to close app');
            return false;
          } else {
            return true;
          }
        },
        child: Stack(
          children: [
            // BackGround Image
            ShortCodeBackGroundImage(),
            // Front screen(textfields, buttons etc)
            SingleChildScrollView(
              child: Column(
                children: [
                  heightC(201),
                  Container(
                    height: context.MediaQueryHeight() < 430
                        ? 450
                        : context.MediaQueryHeight(),
                    width: MediaQuery.of(context).size.width,
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
                              LocaleKeys.Continue_with_shortcode.tr(),
                              style:
                                  MyTextStyle.continue_With_ShortCode(context),
                            ),
                            heightC(44),

                            // textfield heading

                            Text(
                              LocaleKeys.shortcode.tr(),
                              style: MyTextStyle.shortCode(context),
                            ),
                            heightC(15),
                            // text field
                            ShortCodeTextField(),
                            heightC(5),
                            // stay loggedin
                            stayLoggedin(),
                            heightC(25),
                            // Button
                            Consumer<AuthProvider>(
                              builder: (context, value, child) {
                                if (value.isShortcodeWaiting) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircularProgressIndicator(
                                        color: MyColors.primaryColor,
                                      ),
                                    ],
                                  );
                                } else
                                  return Button1(
                                    text: LocaleKeys.login.tr(),
                                    onTap: () async {
                                      if (value.formKey.currentState!
                                          .validate()) {
                                        await value.shortCodeApiFun()
                                            ? {
                                                context.pushNamed(
                                                    MyRoutes.oTPScreen)
                                              }
                                            : null;
                                      }
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
      ),
    );
  }
}
