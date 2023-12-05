import 'package:flutter/material.dart';
import 'package:home_saloon/app/widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/widgets/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';

import '../../../widgets/vibrate/vibrate.dart';

class SettingTile extends StatelessWidget {
  final String text;
  final Widget widget;
  final VoidCallback ontap;
  SettingTile({
    super.key,
    required this.text,
    required this.ontap,
    this.widget = const Icon(Icons.arrow_forward_rounded),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 77,
          width: context.MediaQueryWidth(),
          child: InkWell(
            onTap: () {
              vibrate();
              ontap();
            },
            borderRadius: BorderRadius.circular(5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: MyTextStyle.setting_Page_Tile_Text(context),
                  ),
                  widget,
                ],
              ),
            ),
          ),
        ),
        heightC(5),
      ],
    );
  }
}
