import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/icons/app_Icons.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          // search bar
          Expanded(
            child: InkWell(
              onTap: () {
                vibrate();
              },
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: MyColors.primaryColor, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search here',
                        style: MyTextStyle.search_Here(context),
                      ),
                      SvgPicture.asset(MySvgPath.search)
                    ],
                  ),
                ),
              ),
            ),
          ),
          widthW(17),
          // filter button
          InkWell(
            onTap: () {
              vibrate();
            },
            borderRadius: BorderRadius.circular(5),
            child: Container(
              height: 38,
              width: 82,
              decoration: BoxDecoration(
                  color: MyColors.filter_Box_Color,
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Filter',
                    style: MyTextStyle.filter_Text(context),
                  ),
                  SvgPicture.asset(MySvgPath.filter)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
