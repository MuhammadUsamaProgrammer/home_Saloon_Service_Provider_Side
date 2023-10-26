import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/resources/icons/app_Icons.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

class ProfileItemsTile extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const ProfileItemsTile({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: MyColors.backgroundColor,
          child: InkWell(
            onTap: () {
              ontap;
            },
            child: Container(
              height: 62,
              width: context.MediaQueryWidth(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: MyTextStyle.lists_Text(context),
                  ),
                  SvgPicture.asset(MySvgPath.next_Arrow_Round)
                ],
              ),
            ),
          ),
        ),
        Divider(
          color: MyColors.text_field_color_Secondary,
          thickness: 2,
        )
      ],
    );
  }
}
