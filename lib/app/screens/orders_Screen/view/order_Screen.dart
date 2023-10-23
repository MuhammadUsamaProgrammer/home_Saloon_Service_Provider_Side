import 'package:flutter/material.dart';

import '../../../../utils/theme/colors_theme_data.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
        ),
      ),
    );
  }
}
