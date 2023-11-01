import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/common/coPagesAppBar/coPages_AppBar.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

import '../../../common/cutomize_Sizedbox/CustomsizedBox.dart';
import '../components/languageDialogPopUp.dart';
import '../components/settingTile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: CoPagesAppBar(
        LocaleKeys.Settings.tr(),
      ),
      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              heightC(57),
              // Change_Password Tile
              SettingTile(
                text: LocaleKeys.Change_Password.tr(),
                ontap: () {},
              ),
              // Change_Language Tile
              SettingTile(
                text: LocaleKeys.Change_Language.tr(),
                widget: Text(
                  LocaleKeys.Current_Language.tr(),
                  style: MyTextStyle.current_Language(context),
                ),
                ontap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return LanguageDialogPopUp();
                      });
                },
              ),
              // About_us Tile
              SettingTile(
                text: LocaleKeys.About_us.tr(),
                ontap: () {},
              ),
              // Privacy_Policy Tile
              SettingTile(
                text: LocaleKeys.Privacy_Policy.tr(),
                ontap: () {},
              ),
              // Contact_us Tile
              SettingTile(
                text: LocaleKeys.Contact_us.tr(),
                ontap: () {},
              ),
              // Feedback Tile
              SettingTile(
                text: LocaleKeys.Feedback.tr(),
                ontap: () {
                  GoRouter.of(context).pushNamed(MyRoutes.feedbackScreen);
                },
              ),
              // Delete_Account Tile
              SettingTile(
                text: LocaleKeys.Delete_Account.tr(),
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
