import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/sliderProvider.dart';

class CustomSlider extends StatelessWidget {
  final double height;
  final double width;
  final double maxValue;
  final Color foreGround_Color;
  final Color backGround_Color;
  const CustomSlider(
      {super.key,
      required this.height,
      required this.width,
      this.maxValue = 3,
      this.foreGround_Color = const Color(0xffF74C69),
      this.backGround_Color = const Color(0xffD9D9D9)});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(100)),
          ),
          Consumer<CustomSliderProvider>(
            builder: (context, value, child) {
              return Container(
                height: height,
                width: width * value.sliderValue / maxValue,
                decoration: BoxDecoration(
                    color: foreGround_Color,
                    borderRadius: BorderRadius.circular(100)),
              );
            },
          )
        ],
      ),
    );
  }
}
