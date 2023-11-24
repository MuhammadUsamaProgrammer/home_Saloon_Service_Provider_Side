import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/app/screens/main_Page/provider/main_Page_Provider.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../utils/localization/keys/codegen_loader.g.dart';
import '../../../../resources/icons/app_Icons.dart';

class SeeAllRow extends StatelessWidget {
  const SeeAllRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Active_Orders text
        Text(
          LocaleKeys.Active_Orders.tr(),
          style: MyTextStyle.active_Orders(context),
        ),
        // See_All button
        Consumer<MainPageProvider>(
          builder: (context, value, child) {
            return InkWell(
              onTap: () {
                vibrate();
                value.changePage(1);
              },
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 50,
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      LocaleKeys.See_All.tr(),
                      style: MyTextStyle.see_All(context),
                    ),
                    widthW(5),
                    SvgPicture.asset(MySvgPath.next_Arrow_Boxy),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
