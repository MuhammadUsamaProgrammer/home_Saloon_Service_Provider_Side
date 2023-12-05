import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:home_saloon/app/screens/auth/provider/auth_provider.dart';
import 'package:provider/provider.dart';
import '../../../localization/keys/codegen_loader.g.dart';
import '../../../widgets/vibrate/vibrate.dart';

class stayLoggedin extends StatelessWidget {
  const stayLoggedin({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, value, child) {
      return Row(
        children: [
          // check box
          InkWell(
            onTap: () {
              vibrate();
              value.toogleStayLoggedIn();
            },
            child: Container(
              height: 50,
              width: 26,
              child: Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: value.stayLoggedIn
                          ? MyColors.primaryColor
                          : MyColors.stay_Login_checkBox_Color,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // stay loggedin text

          GestureDetector(
            onTap: () {
              vibrate();
              value.toogleStayLoggedIn();
            },
            child: Container(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.Stay_logged_in.tr(),
                    style: MyTextStyle.stay_Loggedin(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
