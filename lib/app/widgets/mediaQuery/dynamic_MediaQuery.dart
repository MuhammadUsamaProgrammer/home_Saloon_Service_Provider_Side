import 'package:flutter/material.dart';

extension TextSizeAdjuster on BuildContext {
  double MediaQueryWidth() {
    return MediaQuery.of(this).size.width;
  }

  double MediaQueryHeight() {
    return MediaQuery.of(this).size.height;
  }
}
