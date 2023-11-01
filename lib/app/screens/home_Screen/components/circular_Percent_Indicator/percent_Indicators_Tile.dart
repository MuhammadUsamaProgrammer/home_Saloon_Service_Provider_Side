import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'circular_Indicator.dart';

class CircleIndicators extends StatelessWidget {
  const CircleIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          widthW(24),
          // Total_Orders
          CircularTotalIndicator(
            total: 50,
          ),
          widthW(6),
          // Order_Completion
          CircularPercentIndicator(
            percent: 80,
            text: LocaleKeys.Order_Completion.tr(),
          ),
          widthW(6),
          // On_Time_Delivery
          CircularPercentIndicator(
            percent: 90,
            text: LocaleKeys.On_Time_Delivery.tr(),
          ),
          widthW(6),
          // Positive_Rating
          CircularPercentIndicator(
            percent: 60,
            text: LocaleKeys.Positive_Rating.tr(),
          ),
        ],
      ),
    );
  }
}
