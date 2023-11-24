import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/resources/images/images_Path.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';

import '../provider/heightControlProvider.dart';

class RecentTransactionList extends StatelessWidget {
  const RecentTransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HeightControlProvider>(
      builder: (context, value, child) {
        return Container(
          height: (value.containerHeight + value.sizedBoxHeight) *
              value.items.toDouble(),
          width: context.MediaQueryWidth(),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: value.items,
            itemBuilder: (context, index) {
              // this colum is to give distance in Recent transection container and sized box
              return Column(
                children: [
                  // Recent transection container
                  Container(
                    height: value.containerHeight,
                    width: context.MediaQueryWidth(),
                    decoration: BoxDecoration(
                        color: MyColors.backgroundColor,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(0, 4),
                              color: MyColors.recent_Payment_Tile_Shadow_Color)
                        ]),
                    // this padding is for inner contant of Recent transection
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // file image
                          Image.asset(MyImagesPath.file_Icon),
                          // this padding is to give space between file image and date+transection reason
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            // this column is for date & transection reason
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // transection date
                                Text(
                                  '22-Oct-2022',
                                  style:
                                      MyTextStyle.recent_Payments_Date(context),
                                ),
                                // transection reason
                                Text(
                                  'Me Time',
                                  style: MyTextStyle.recent_Payments_Reason(
                                      context),
                                ),
                              ],
                            ),
                          ),
                          widthW(context.MediaQueryWidth() * .20),
                          // transection amount
                          Text(
                            '-PKR 22.00',
                            style: MyTextStyle.recent_Payments_Amount(context),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // height between two containers
                  heightC(value.sizedBoxHeight),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
