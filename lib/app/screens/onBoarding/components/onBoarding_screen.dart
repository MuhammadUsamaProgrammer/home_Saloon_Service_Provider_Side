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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.width + 50,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
                child: Image.asset(
              onBoardingScreenModel[index].image,
              fit: BoxFit.cover,
            )),
          ),
          addVerticalSpace(MediaQuery.of(context).size.width / 5.7),
          Text(
            LocaleKeys.Onboarding_Screen_heading.tr(),
            style: AppTextStyle.onBoarding_heading,
          ),
          addVerticalSpace(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              LocaleKeys.Onboarding_Screen_paragraph.tr(),
              style: AppTextStyle.onBoarding_paragraph,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
