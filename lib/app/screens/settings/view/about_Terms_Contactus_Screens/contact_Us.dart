import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/resources/images/images_Path.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import '../../../../../utils/localization/keys/codegen_loader.g.dart';
import '../../../../common/coPagesAppBar/coPages_AppBar.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: CoPagesAppBar(
        LocaleKeys.About_us.tr(),
      ),
      // body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Container(
          height: context.MediaQueryHeight(),
          width: context.MediaQueryWidth(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                heightC(41),
                Container(
                  height: 123,
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage(MyImagesPath.logo2))),
                ),
                heightC(33),
                Container(
                  height: 174,
                  decoration: BoxDecoration(
                      color: MyColors.backgroundColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 19,
                            spreadRadius: 0,
                            color: MyColors.recent_Payment_Tile_Shadow_Color,
                            offset: Offset(0, 4)),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 36, top: 6, bottom: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ContantRow(
                            icon: Icons.mail, text: 'flutterhybrid@gmail.com'),
                        ContantRow(icon: Icons.phone, text: '+92 3001234567'),
                        ContantRow(
                            icon: Icons.send_rounded,
                            text: 'ABC Arena, Saudia Arabia, XYZ'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContantRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const ContantRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: MyColors.primaryColor,
        ),
        widthW(10),
        Text(
          text,
          style: MyTextStyle.contactUs_Texts(context),
        )
      ],
    );
  }
}
