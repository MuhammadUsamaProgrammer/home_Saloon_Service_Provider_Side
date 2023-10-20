import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../../../../common/vibrate/vibrate.dart';
import '../provider/check_Box_Provider.dart';

class stayLoggedin extends StatelessWidget {
  const stayLoggedin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer<CheckBoxProvider>(
          builder: (context, value, child) => InkWell(
            onTap: () {
              vibrate();
              value.toogleStayLoggedIn();
            },
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: value.stayLoggedIn
                    ? MyColors.primaryColor
                    : MyColors.stay_Login_checkBox_Color,
              ),
            ),
          ),
        ),
        widthW(11),
        Text(
          LocaleKeys.Stay_logged_in.tr(),
          style: AppTextStyle.stay_Loggedin,
        ),
      ],
    );
  }
}
