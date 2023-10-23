import 'package:flutter/material.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

class CircularPercentIndicator extends StatelessWidget {
  final double radius;
  final double percent;
  CircularPercentIndicator({this.radius = 65, required this.percent});

  @override
  Widget build(BuildContext context) {
    // final double radius = 65.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: radius,
              height: radius,
              child: CircularProgressIndicator(
                value: percent * 0.01,
                strokeWidth: 3.0,
                backgroundColor: Color.fromARGB(255, 152, 168, 144),
                color: MyColors.status_Tile_Ring_color,
              ),
            ),
            Text(
              '${(percent).toStringAsFixed(0)}%',
              style: AppTextStyle.status,
            ),
          ],
        ),
      ],
    );
  }
}

class CircularTotalIndicator extends StatelessWidget {
  final double radius;
  final double total;
  CircularTotalIndicator({this.radius = 65, required this.total});
  @override
  Widget build(BuildContext context) {
    final double radius = 65.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: radius,
              height: radius,
              child: CircularProgressIndicator(
                value: 1,
                strokeWidth: 3.0,
                backgroundColor: Color.fromARGB(255, 152, 168, 144),
                color: MyColors.status_Tile_Ring_color,
              ),
            ),
            Text(
              '${total.toStringAsFixed(0)}',
              style: AppTextStyle.status,
            ),
          ],
        ),
      ],
    );
  }
}
