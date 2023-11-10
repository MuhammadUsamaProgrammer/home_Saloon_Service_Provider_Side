import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../resources/icons/app_Icons.dart';
import '../../map/provider/map_Provider.dart';

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
                GoRouter.of(context).pushNamed(MyRoutes.searchScreen);
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
                      SvgPicture.asset(MySvgPath.search),
                    ],
                  ),
                ),
              ),
            ),
          ),
          widthW(17),
          // filter button
          Consumer<MapProvider>(builder: (context, value, child) {
            return InkWell(
              onTap: () {
                vibrate();
                GoRouter.of(context).pushNamed(MyRoutes.mapScreen);
                value.initializeTheme(context);
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
            );
          })
        ],
      ),
    );
  }
}
