import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/utils/images/images_Path.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

import '../../../../utils/theme/colors_theme_data.dart';
import 'notification_Button.dart';

class AppBarOfHomePage extends StatelessWidget {
  const AppBarOfHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //   goodmorning and name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: AppTextStyle.good_Morning,
                ),
                Text(
                  'Taimoor!',
                  style: AppTextStyle.name,
                ),
              ],
            ),
            // notification & profile pic
            Row(
              children: [
                NotificationButton(),
                widthW(11),
                // profile image
                Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white, width: 1),
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.bottom_Bar_Shadow_Color,
                          blurRadius: 5,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage(ImagesPath.profile_Image),
                          fit: BoxFit.cover)),
                )
              ],
            )
          ]),
        ],
      ),
    );
  }
}
