import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

import '../../../../resources/images/images_Path.dart';
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
                  style: MyTextStyle.good_Morning(context),
                ),
                Text(
                  'Taimoor!',
                  style: MyTextStyle.name(context),
                ),
              ],
            ),
            // notification & profile pic
            Row(
              children: [
                // notification button
                NotificationButton(),
                widthW(11),
                // profile image
                GestureDetector(
                  onTap: () {
                    vibrate();
                  },
                  child: Container(
                    height: 37,
                    width: 37,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.appBar_Items_Shadow_Color,
                            blurRadius: 1,
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage(MyImagesPath.profile_Image),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            )
          ]),
        ],
      ),
    );
  }
}
