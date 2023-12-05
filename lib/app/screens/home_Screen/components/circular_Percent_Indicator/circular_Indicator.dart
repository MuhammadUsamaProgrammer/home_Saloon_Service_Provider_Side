import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import '../../../../localization/keys/codegen_loader.g.dart';
import '../../../../widgets/cutomize_Sizedbox/CustomsizedBox.dart';

class CircularPercentIndicator extends StatelessWidget {
  final String text;
  final double percent;
  CircularPercentIndicator({required this.percent, required this.text});

  @override
  Widget build(BuildContext context) {
    final double radius = 65;

    return Container(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: radius,
                    height: radius,
                    // circular progress indicator
                    child: CircularProgressIndicator(
                      value: percent * 0.01,
                      strokeWidth: 3.0,
                      backgroundColor: Color.fromARGB(255, 152, 168, 144),
                      color: MyColors.status_Tile_Ring_color,
                    ),
                  ),
                  // centered percentage
                  Text(
                    '${(percent).toStringAsFixed(0)}%',
                    style: MyTextStyle.status(context),
                  ),
                ],
              ),
            ],
          ),
          heightC(12),
          Container(
            width: 75,
            child: Row(
              children: [
                // bottom text
                Expanded(
                  child: Text(
                    text,
                    style: MyTextStyle.status_Name(context),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircularTotalIndicator extends StatelessWidget {
  final double radius;
  final double total;
  CircularTotalIndicator({this.radius = 65, required this.total});
  @override
  Widget build(BuildContext context) {
    final double radius = 65;

    return Container(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: radius,
                    height: radius,
                    // circular progress indicator
                    child: CircularProgressIndicator(
                      value: 1,
                      strokeWidth: 3.0,
                      backgroundColor: Color.fromARGB(255, 152, 168, 144),
                      color: MyColors.status_Tile_Ring_color,
                    ),
                  ),
                  // centered total
                  Text(
                    '${total.toStringAsFixed(0)}',
                    style: MyTextStyle.status(context),
                  ),
                ],
              ),
            ],
          ),
          heightC(12),
          Container(
            width: 50,
            child: Center(
              // bottom text
              child: Text(
                LocaleKeys.Total_Orders.tr(),
                style: MyTextStyle.status_Name(context),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
