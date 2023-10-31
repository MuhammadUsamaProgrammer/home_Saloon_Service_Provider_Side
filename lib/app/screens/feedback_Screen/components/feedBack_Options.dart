import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/app/screens/feedback_Screen/provider/feedback_Provider.dart';
import 'package:home_saloon/resources/icons/app_Icons.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';

class FeedbackOptions extends StatelessWidget {
  const FeedbackOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedbackProvider>(
      builder: (context, value, child) {
        return Container(
          height: 58,
          width: context.MediaQueryWidth(),
          decoration: BoxDecoration(
              color: MyColors.backgroundColor,
              borderRadius: BorderRadius.circular(7),
              boxShadow: [
                BoxShadow(
                    color: MyColors.recent_Payment_Tile_Shadow_Color,
                    blurRadius: 7,
                    offset: Offset(-1, 2))
              ]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: DropdownButton<int>(
                underline: Container(
                  color: Colors.transparent,
                ),
                isExpanded: true,
                value: value.index,
                icon: SvgPicture.asset(MySvgPath.dropDown_Icon),
                style: MyTextStyle.select_Options_In_Feedback(context),
                items: value.dropdownMenuItem,
                onChanged: (int? newIndex) {
                  vibrate();
                  value.changeIndex(newIndex);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
