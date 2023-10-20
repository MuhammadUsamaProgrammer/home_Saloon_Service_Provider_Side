import 'package:flutter/material.dart';
import 'package:home_saloon/utils/audio/click_Sounds.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

class Button1 extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  const Button1({
    super.key,
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
          ClickSound.play();
          onTap();
        },
        child: Text(
          text,
          style: AppTextStyle.button_text,
        ),
        style: TextButton.styleFrom(
          foregroundColor: Color.fromARGB(255, 255, 206, 121),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: MyColors.primaryColor,
          // minimumSize: Size.fromHeight(54),
        ),
      ),
    );
  }
}
