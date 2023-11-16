import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/resources/images/images_Path.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import '../../../../../localization/keys/codegen_loader.g.dart';
import '../../../../common/coPagesAppBar/coPages_AppBar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: CoPagesAppBar(
        LocaleKeys.About_us.tr(),
      ),
      // body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
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
                heightC(40),
                Row(
                  children: [
                    Text(
                      LocaleKeys.Who_we_are.tr(),
                      style: MyTextStyle.about_Terms_paragraph_Heading(context),
                    ),
                  ],
                ),
                heightC(7),
                Text(
                  LocaleKeys.Who_we_are_paragraph.tr() +
                      LocaleKeys.Who_we_are_paragraph.tr(),
                  style: MyTextStyle.about_Terms_paragraph_Text(context),
                ),
                heightC(37),
                Row(
                  children: [
                    Text(
                      LocaleKeys.Our_Vision.tr(),
                      style: MyTextStyle.about_Terms_paragraph_Heading(context),
                    ),
                  ],
                ),
                heightC(7),
                Text(
                  LocaleKeys.Our_Vision_paragraph.tr() +
                      LocaleKeys.Our_Vision_paragraph.tr(),
                  style: MyTextStyle.about_Terms_paragraph_Text(context),
                ),
                heightC(40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
