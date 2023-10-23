import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

class EarningStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(11)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
        child: Column(
          // Wrap the Row with a Column
          children: [
            Expanded(
              // Use Expanded here
              child: Row(
                children: [
                  // TOTAL EARNING & active orders
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // total earnings
                        Container(
                          height: 42,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LocaleKeys.Total_Earnings.tr(),
                                style: AppTextStyle.earning_Status_Headings,
                              ),
                              Text(
                                'SR 40.50',
                                style: AppTextStyle.earning_Status,
                              ),
                            ],
                          ),
                        ),
                        // active orders
                        Container(
                          height: 42,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LocaleKeys.Active_Orders.tr(),
                                style: AppTextStyle.earning_Status_Headings,
                              ),
                              Text(
                                '3',
                                style: AppTextStyle.earning_Status,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Earnings_in_November & Completed_Order
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Earnings_in_November
                        Container(
                          height: 42,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LocaleKeys.Earnings_in_November.tr(),
                                style: AppTextStyle.earning_Status_Headings,
                              ),
                              Text(
                                'SR 40.50',
                                style: AppTextStyle.earning_Status,
                              ),
                            ],
                          ),
                        ),
                        // Completed_Order
                        Container(
                          height: 42,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LocaleKeys.Completed_Order.tr(),
                                style: AppTextStyle.earning_Status_Headings,
                              ),
                              Text(
                                '3',
                                style: AppTextStyle.earning_Status,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
