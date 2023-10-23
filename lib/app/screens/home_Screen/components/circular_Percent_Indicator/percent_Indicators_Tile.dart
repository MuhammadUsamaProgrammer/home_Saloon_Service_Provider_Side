import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import '../../../../../utils/theme/colors_theme_data.dart';
import 'circular_Indicator.dart';

class CircleIndicators extends StatelessWidget {
  const CircleIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Total_Orders
          Container(
            width: MediaQuery.of(context).size.width * 85 / 355,
            // context.adjustedTextSize(85),
            height: MediaQuery.of(context).size.width * 136 / 355,
            // context.adjustedTextSize(136),
            decoration: BoxDecoration(
              color: MyColors.status_Tile_color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularTotalIndicator(
                  total: 50,
                ),
                heightC(12),
                Text(
                  LocaleKeys.Total_Orders.tr(),
                  style: AppTextStyle.status_Name(context),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          widthW(6),
          // Order_Completion
          Container(
            width: 85,
            height: 136,
            decoration: BoxDecoration(
              color: MyColors.status_Tile_color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  percent: 80,
                ),
                heightC(12),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKeys.Order_Completion.tr(),
                        style: AppTextStyle.status_Name(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          widthW(6),
          // On_Time_Delivery
          Container(
            width: 85,
            height: 136,
            decoration: BoxDecoration(
              color: MyColors.status_Tile_color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  percent: 90,
                ),
                heightC(12),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKeys.On_Time_Delivery.tr(),
                        style: AppTextStyle.status_Name(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          widthW(6),
          // Positive_Rating
          Container(
            width: 85,
            height: 136,
            decoration: BoxDecoration(
              color: MyColors.status_Tile_color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  percent: 60,
                ),
                heightC(12),
                Text(
                  LocaleKeys.Positive_Rating.tr(),
                  style: AppTextStyle.status_Name(context),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
