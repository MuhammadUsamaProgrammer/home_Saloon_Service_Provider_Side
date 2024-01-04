import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_saloon/app/widgets/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/widgets/vibrate/vibrate.dart';
import 'package:home_saloon/app/core/resources/icons/app_Icons.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';

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
              vibrate();
              ontap();
            },
            borderRadius: BorderRadius.circular(5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
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
                    SvgPicture.asset(MySvgPath.next_Arrow_Round,)
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Divider(
            color: MyColors.text_field_color_Secondary,
            thickness: 2,
          ),
        )
      ],
    );
  }
}
