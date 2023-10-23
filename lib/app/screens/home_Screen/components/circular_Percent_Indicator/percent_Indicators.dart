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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Total_Orders
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
              CircularTotalIndicator(
                total: 50,
              ),
              heightC(12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKeys.Total_Orders.tr(),
                        style: AppTextStyle.status_Name,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
                      style: AppTextStyle.status_Name,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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
                      style: AppTextStyle.status_Name,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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
              Row(
                children: [
                  Expanded(
                    child: Text(
                      LocaleKeys.Positive_Rating.tr(),
                      style: AppTextStyle.status_Name,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
