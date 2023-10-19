import 'package:flutter/material.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';

class AppTextStyle {
  static const String font = 'poppins';
  static const TextStyle onBoarding_heading = TextStyle(
    fontFamily: font,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: MyColors.primaryColor,
  );

  static const TextStyle onBoarding_paragraph = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.onBoarding_paragraph_text_color,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle button_text = TextStyle(
    fontFamily: font,
    fontSize: 18,
    color: MyColors.button_text_color,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle continue_With_ShortCode = TextStyle(
    fontFamily: font,
    fontSize: 22,
    color: MyColors.primaryColor,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle shortCode = TextStyle(
    fontFamily: font,
    fontSize: 18,
    color: MyColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle stay_Loggedin = TextStyle(
    fontFamily: font,
    fontSize: 12,
    color: MyColors.stay_Login_Color,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle enter_OTP = TextStyle(
    fontFamily: font,
    fontSize: 26,
    color: MyColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle timer_OTP = TextStyle(
    fontFamily: font,
    fontSize: 18,
    color: MyColors.primaryColor,
    fontWeight: FontWeight.w500,
  );

  // static const TextStyle onBoarding_paragraph = TextStyle(
  //   fontFamily: font,
  //   fontSize: 16,
  //   color: MyColors.onBoarding_paragraph_text_color,
  //   fontWeight: FontWeight.w400,
  // );

  // static const TextStyle onBoarding_paragraph = TextStyle(
  //   fontFamily: font,
  //   fontSize: 16,
  //   color: MyColors.onBoarding_paragraph_text_color,
  //   fontWeight: FontWeight.w400,
  // );
}
