import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import '../components/app_Bar_Of_Home_Page.dart';
import '../components/circular_Percent_Indicator/percent_Indicators.dart';
import '../components/earning_Status.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarOfHomePage(),
              heightC(34),
              Text(
                LocaleKeys.Your_Stats_are_Good_Keep_it_up.tr(),
                style: AppTextStyle.status_Headings,
              ),
              heightC(10),
              CircleIndicators(),
              heightC(35),
              Text(
                LocaleKeys.Earning_Status.tr(),
                style: AppTextStyle.status_Headings,
              ),
              EarningStatus(),
            ],
          ),
        ),
      ),
    );
  }
}
