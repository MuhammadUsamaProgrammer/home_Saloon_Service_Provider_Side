import 'package:flutter/material.dart';

extension TextSizeAdjuster on BuildContext {
  double adjustedTextSize(double userTextSize) {
    final MediaQueryData mediaQuery = MediaQuery.of(this);
    final double devicePixelRatio = mediaQuery.devicePixelRatio;
    // Calculate the adjusted text size
    return userTextSize * devicePixelRatio / 3;
  }
}
