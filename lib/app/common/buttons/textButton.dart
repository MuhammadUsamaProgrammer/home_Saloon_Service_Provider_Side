import 'package:flutter/material.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

import '../../../utils/theme/colors_theme_data.dart';
import '../vibrate/vibrate.dart';

class Button1 extends StatelessWidget {
  final bool isActive;
  final Color color;
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  const Button1({
    super.key,
    this.isActive = true,
    this.color = MyColors.primaryColor,
    required this.text,
    required this.onTap,
    this.width = double.infinity,
    this.height = 54,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: () {
          isActive ? vibrate() : null;
          onTap();
        },
        child: Text(
          text,
          style: MyTextStyle.button_text(context),
        ),
        style: TextButton.styleFrom(
          foregroundColor:
              isActive ? Color.fromARGB(255, 255, 206, 121) : color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: color,
        ),
      ),
    );
  }
}
