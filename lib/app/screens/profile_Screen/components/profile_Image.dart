import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import '../../../../utils/localization/keys/codegen_loader.g.dart';
import '../../../../resources/images/images_Path.dart';
import '../../../../utils/routes/app_route_const.dart';
import '../../../../utils/theme/colors_theme_data.dart';
import '../../../../utils/theme/text_Theme_Data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';

import '../../editProfile_Screen/components/new_profile_Image.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.MediaQueryWidth(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          heightC(59),
          Text(
            LocaleKeys.Profile.tr(),
            style: MyTextStyle.page_Heading_Profile(context),
          ),
          heightC(24),
          GestureDetector(
            onTap: () {
              vibrate();
              GoRouter.of(context).pushNamed(MyRoutes.editProfileScreen);
            },
            child: Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                border: Border.all(color: MyColors.backgroundColor, width: 4),
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage(MyImagesPath.profile_Image),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: MyColors.container_Shadow_Color,
                    blurRadius: 13,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: NewProfileImage(),
            ),
          ),
        ],
      ),
    );
  }
}
