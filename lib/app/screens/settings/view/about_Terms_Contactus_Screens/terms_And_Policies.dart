import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import '../../../../../localization/keys/codegen_loader.g.dart';
import '../../../../common/coPagesAppBar/coPages_AppBar.dart';

class TermsAndPolicies extends StatelessWidget {
  const TermsAndPolicies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: CoPagesAppBar('Terms and Policies'),
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
                heightC(30),
                Row(
                  children: [
                    Text(
                      LocaleKeys.Terms_and_Condition.tr(),
                      style: MyTextStyle.about_Terms_paragraph_Heading(context),
                    ),
                  ],
                ),
                heightC(7),
                Text(
                  LocaleKeys.Terms_and_Condition_paragraph.tr() +
                      LocaleKeys.Terms_and_Condition_paragraph.tr(),
                  style: MyTextStyle.about_Terms_paragraph_Text(context),
                ),
                heightC(37),
                Row(
                  children: [
                    Text(
                      LocaleKeys.Privacy_Policy.tr(),
                      style: MyTextStyle.about_Terms_paragraph_Heading(context),
                    ),
                  ],
                ),
                heightC(7),
                Text(
                  LocaleKeys.Privacy_Policy_Paragraph.tr() +
                      LocaleKeys.Privacy_Policy_Paragraph.tr(),
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
