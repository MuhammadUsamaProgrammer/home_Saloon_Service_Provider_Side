import 'package:flutter/material.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';

extension TextSizeAdjuster on BuildContext {
  double adjustedTextSize(double userTextSize) {
    final MediaQueryData mediaQuery = MediaQuery.of(this);
    final double devicePixelRatio = mediaQuery.devicePixelRatio;
    // Calculate the adjusted text size
    return userTextSize * devicePixelRatio / 3;
  }
}

class AppTextStyle {
  final BuildContext context;

  AppTextStyle(this.context);
  static const String font = 'poppins';
  static TextStyle onBoarding_heading = TextStyle(
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
    color: MyColors.textColor_Secondary,
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
    color: MyColors.textColor_primary,
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
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle timer_OTP = TextStyle(
    fontFamily: font,
    fontSize: 18,
    color: MyColors.primaryColor,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle good_Morning = TextStyle(
    fontFamily: font,
    fontSize: 13,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle name = TextStyle(
    fontFamily: font,
    fontSize: 19,
    color: MyColors.onBoarding_paragraph_text_color,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle status_Headings = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle status = TextStyle(
    fontFamily: font,
    fontSize: 17,
    color: MyColors.textColor_Secondary,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle status_Name = TextStyle(
    fontFamily: font,
    fontSize: 12,
    color: MyColors.textColor_Secondary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle earning_Status_Headings = TextStyle(
    fontFamily: font,
    fontSize: 12,
    color: MyColors.textColor_Secondary,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle earning_Status = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.textColor_Secondary,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle active_Orders = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.onBoarding_paragraph_text_color,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle see_All = TextStyle(
    fontFamily: font,
    fontSize: 12,
    color: MyColors.see_All,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle Tile_Text_Heading = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle Tile_Text_content = TextStyle(
    fontFamily: font,
    fontSize: 13,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle customer_Name__In_Tile = TextStyle(
    fontFamily: font,
    fontSize: 14,
    color: MyColors.customer_Name__In_Tile,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle order_Status = TextStyle(
    fontFamily: font,
    fontSize: 12,
    color: MyColors.primaryColor,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bottomBar_Text = TextStyle(
    fontFamily: font,
    fontSize: 8,
    color: MyColors.unSelected_bottomBar_Icons_Color,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle manage_Orders = TextStyle(
    fontFamily: font,
    fontSize: 19,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle tabBar_Unselected_Heading = TextStyle(
    fontFamily: font,
    fontSize: 14,
    color: MyColors.unSelected_TabBar_text_Color,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle tabBar_Selected_Heading = TextStyle(
    fontFamily: font,
    fontSize: 14,
    color: MyColors.textColor_Secondary,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle profile_Name = TextStyle(
    fontFamily: font,
    fontSize: 22,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle lists_Text = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle coPages_Headings = TextStyle(
    fontFamily: font,
    fontSize: 18,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle current_Language = TextStyle(
    fontFamily: font,
    fontSize: 14,
    color: MyColors.language,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle edit_Profile_Text = TextStyle(
    fontFamily: font,
    fontSize: 18,
    color: MyColors.text_field_color,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle available_Balance_Heading = TextStyle(
    fontFamily: font,
    fontSize: 14,
    color: MyColors.available_Balance,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle available_Balance = TextStyle(
    fontFamily: font,
    fontSize: 29,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle recent_Payments_Heading = TextStyle(
    fontFamily: font,
    fontSize: 14,
    color: MyColors.onBoarding_paragraph_text_color,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle recent_Payments_Date = TextStyle(
    fontFamily: font,
    fontSize: 10,
    color: MyColors.available_Balance,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle recent_Payments_Reason = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle recent_Payments_Amount = TextStyle(
    fontFamily: font,
    fontSize: 12,
    color: MyColors.primaryColor,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle select_Options_In_Feedback = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.select_Options_In_Feedback,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle write_A_Message = TextStyle(
    fontFamily: font,
    fontSize: 12,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle type_Your_Message_Hint = TextStyle(
    fontFamily: font,
    fontSize: 14,
    color: MyColors.text_field_color,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle type_Your_Message_Text = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle about_Terms_paragraph_Heading = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle about_Terms_paragraph_Text = TextStyle(
    fontFamily: font,
    fontSize: 16,
    color: MyColors.textColor_primary,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle contactUs_Texts = TextStyle(
    fontFamily: font,
    fontSize: 12,
    color: MyColors.onBoarding_paragraph_text_color,
    fontWeight: FontWeight.w400,
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
