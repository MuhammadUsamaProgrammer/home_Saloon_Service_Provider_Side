import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/main_Page/components/main_bottom_Sheet_Icons.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';

import '../../../localization/keys/codegen_loader.g.dart';
import '../../../core/resources/icons/app_Icons.dart';

class BottomSheetOfMainScreen extends StatelessWidget {
  const BottomSheetOfMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 68,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: MyColors.bottom_Bar_Shadow_Color,
              blurRadius: 15,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainBottomSheetsIcons(
              svg: MySvgPath.home_Svg,
              name: LocaleKeys.Home.tr(),
              index: 0,
            ),
            SizedBox(),
            MainBottomSheetsIcons(
              svg: MySvgPath.orders_Svg,
              name: LocaleKeys.Orders.tr(),
              index: 1,
            ),
            // SizedBox(),
            // MainBottomSheetsIcons(
            //   svg: MySvgPath.my_Services,
            //   name: 'My Services',
            //   index: 2,
            // ),
            SizedBox(),
            MainBottomSheetsIcons(
              svg: MySvgPath.profile_Svg,
              name: LocaleKeys.Profile.tr(),
              index: 2,
            ),
          ],
        ),
      ),
    );
  }
}
