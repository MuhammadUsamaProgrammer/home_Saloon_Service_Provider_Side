import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/screens/profile_Screen/components/profile_Image.dart';
import 'package:home_saloon/app/screens/profile_Screen/components/profile_Items_Tile.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import '../../../../utils/localization/keys/codegen_loader.g.dart';

class ForegroundContentProfileScreen extends StatelessWidget {
  const ForegroundContentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        height: context.MediaQueryHeight(),
        width: context.MediaQueryWidth(),
        // this stack is to place profile image over ther foreground content
        child: Stack(children: [
          Column(
            children: [
              heightC(191),
              Expanded(
                child: Container(
                  width: context.MediaQueryWidth(),
                  decoration: BoxDecoration(
                      color: MyColors.backgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        heightC(66),
                        // name of user
                        Text(
                          'Anny Peter',
                          style: MyTextStyle.profile_Name(context),
                        ),
                        heightC(50),
                        // lists
                        ProfileItemsTile(
                            text: LocaleKeys.Edit_Profile.tr(), ontap: () {}),
                        ProfileItemsTile(
                            text: LocaleKeys.My_Wallet.tr(), ontap: () {}),
                        ProfileItemsTile(
                            text: LocaleKeys.Settings.tr(), ontap: () {}),

                        // logout tile
                        Material(
                          color: MyColors.backgroundColor,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 62,
                              width: context.MediaQueryWidth(),
                              child: Row(
                                children: [
                                  Text(
                                    LocaleKeys.Logout.tr(),
                                    style: MyTextStyle.lists_Text(context),
                                  ),
                                  widthW(14),
                                  Icon(
                                    Icons.logout_rounded,
                                    color: MyColors.primaryColor,
                                  )
                                  // SvgPicture.asset(MySvgPath.logout),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // heading and profile image
          ProfileImage(),
        ]),
      ),
    );
  }
}
