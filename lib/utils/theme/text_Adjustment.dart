import 'package:flutter/material.dart';

// extension TextSizeAdjuster on BuildContext {
//   double adjustedTextSize(double userTextSize) {
//     final MediaQueryData mediaQuery = MediaQuery.of(this);
//     // final double devicePixelRatio = mediaQuery.devicePixelRatio;
//     // Calculate the adjusted text size
//     return MediaQuery.of(this).size.width * userTextSize / 355;
//   }
// }
extension TextSizeAdjuster on BuildContext {
  double adjustedTextSize(double userTextSize) {
    final MediaQueryData mediaQuery = MediaQuery.of(this);
    final double devicePixelRatio = mediaQuery.devicePixelRatio;
    // Calculate the adjusted text size
    return userTextSize * devicePixelRatio / 3;
  }
}
// class AppFonts {
//   static final String poppinsFont =
//       'Poppins'; // Replace with your Poppins font family.
//   static  TextStyle headline1(BuildContext context){
//     return TextStyle(
//     color: AppColor.blackColors,
//     fontFamily: poppinsFont,
//     fontSize: context.adjustedTextSize(35),
//     fontWeight: FontWeight.w500,
//   );
//   }