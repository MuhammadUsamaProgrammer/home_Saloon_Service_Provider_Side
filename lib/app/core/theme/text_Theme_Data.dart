import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';

class MyTextStyle {
  static const String font = 'poppins';

  static TextStyle onBoarding_heading(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: MyColors.primaryColor,
    );
  }

  static TextStyle onBoarding_paragraph(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.onBoarding_paragraph_text_color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle button_text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 18,
      color: MyColors.textColor_Secondary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle continue_With_ShortCode(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 22,
      color: MyColors.primaryColor,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle shortCode(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 18,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle stay_Loggedin(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.stay_Login_Color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle enter_OTP(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 26,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle resend_OTP_Active(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 15,
      color: MyColors.primaryColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle resend_OTP_InActive(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 15,
      color: MyColors.text_field_color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle timer_OTP_Active(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 18,
      color: MyColors.primaryColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle timer_OTP_Inactive(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 18,
      color: MyColors.text_field_color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle good_Morning(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 13,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle name(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 19,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle notification_Page_Heading(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 26,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Readed_notifications_Headings(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.Readed_notification_time_Color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle unRead_notifications_Headings(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.unRead_notification_time_Color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Readed_notifications_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 10,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle unRead_notifications_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 10,
      color: MyColors.textColor_Secondary,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle unRead_notification_time(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 8,
      color: MyColors.unRead_notification_time_Color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Readed_notification_time(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 8,
      color: MyColors.Readed_notification_time_Color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle search_Here(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 14,
      color: MyColors.primaryColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle filter_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 13,
      color: MyColors.primaryColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle status_Headings(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle status(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 17,
      color: MyColors.textColor_Secondary,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle status_Name(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.textColor_Secondary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle earning_Status_Headings(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.textColor_Secondary,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle earning_Status(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_Secondary,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle active_Orders(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.primaryColor,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle see_All(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.see_All,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Tile_Price(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Tile_Text_content(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 13,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle customer_Name__In_Tile(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 14,
      color: MyColors.customer_Name__In_Tile,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle order_Date(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle order_Status(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.primaryColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle order_Status_active(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.order_Status_active_text_Color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle bottomBar_Selected_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 8,
      color: MyColors.primaryColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bottomBar_Unselected_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 8,
      color: MyColors.unSelected_bottomBar_Icons_Color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle manage_Orders(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 19,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle tabBar_Unselected_Heading(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 14,
      color: MyColors.unSelected_TabBar_text_Color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle tabBar_Selected_Heading(BuildContext context,
      {double textSize = 14}) {
    return TextStyle(
      fontFamily: font,
      fontSize: textSize,
      color: MyColors.textColor_Secondary,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle page_Heading_Profile(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 18,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle profile_Name(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 22,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle logout_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: Color.fromARGB(219, 173, 173, 173),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle popup_Button_Yes(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.backgroundColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle lists_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle coPages_Headings(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 18,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle setting_Page_Tile_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle current_Language(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 14,
      color: MyColors.language,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle current_Language_Dialog_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 14,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle edit_Profile_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 18,
      color: MyColors.text_field_color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle available_Balance_Heading(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 14,
      color: MyColors.available_Balance,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle available_Balance(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 29,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle recent_Payments_Heading(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 14,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle recent_Payments_Date(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 10,
      color: MyColors.available_Balance,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle recent_Payments_Reason(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle recent_Payments_Amount(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.primaryColor,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle select_Options_In_Feedback(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.select_Options_In_Feedback,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle write_A_Message(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle type_Your_Message_Hint(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 14,
      color: MyColors.text_field_color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle type_Your_Message_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle about_Terms_paragraph_Heading(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle about_Terms_paragraph_Text(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 16,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle contactUs_Texts(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 12,
      color: MyColors.textColor_primary,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle map_Search_List(BuildContext context) {
    return TextStyle(
      fontFamily: font,
      fontSize: 14,
      color: MyColors.customer_Name__In_Tile,
      fontWeight: FontWeight.w400,
    );
  }
}
