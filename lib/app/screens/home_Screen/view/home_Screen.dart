import 'package:flutter/material.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';

import '../components/circular_Indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 85,
            height: 136,
            decoration: BoxDecoration(
              color: MyColors.status_Tile_color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: CircularPercentIndicator()),
      ),
    );
  }
}
