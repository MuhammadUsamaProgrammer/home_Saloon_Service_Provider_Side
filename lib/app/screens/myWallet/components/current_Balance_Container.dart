import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/resources/images/images_Path.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

import '../../../../utils/localization/keys/codegen_loader.g.dart';

class CurrentBalanceContainer extends StatelessWidget {
  const CurrentBalanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      width: context.MediaQueryWidth(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                MyImagesPath.dotted_Container_Border,
              ),
              fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.Available_Balance.tr(),
              style: MyTextStyle.available_Balance_Heading(context),
            ),
            Text(
              'AED 230.55',
              style: MyTextStyle.available_Balance(context),
            ),
          ],
        ),
      ),
    );
  }
}
