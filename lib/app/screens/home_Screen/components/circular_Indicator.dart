import 'package:flutter/material.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';

import '../provider/circular_Model_Provider.dart';

class CircularPercentIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<CircularPercentModel>(context);
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
                value: model.percent,
                strokeWidth: 3.0,
                backgroundColor: Color.fromARGB(255, 152, 168, 144),
                color: MyColors.status_Tile_Ring_color,
              ),
            ),
            Text(
              '${(model.percent * 100).toStringAsFixed(0)}%',
              style: AppTextStyle.status,
            ),
          ],
        ),
        Slider(
          value: model.percent,
          onChanged: (value) {
            model.setPercent(value);
          },
        ),
      ],
    );
  }
}
