import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

import '../model/onBoarding_Screens_Model.dart';

class Screen extends StatelessWidget {
  final int index;
  Screen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.width + 50,
              width: MediaQuery.of(context).size.width,
              // image
              child: ClipRRect(
                  child: Image.asset(
                onBoardingScreenModel[index].image,
                fit: BoxFit.cover,
              )),
            ),
            heightC(MediaQuery.of(context).size.width / 5.7),
            // heading
            Text(
              LocaleKeys.Onboarding_Screen_heading.tr(),
              style: MyTextStyle.onBoarding_heading(context),
            ),
            heightC(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              // paragraph text
              child: Text(
                LocaleKeys.Onboarding_Screen_paragraph.tr(),
                style: MyTextStyle.onBoarding_paragraph(context),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
