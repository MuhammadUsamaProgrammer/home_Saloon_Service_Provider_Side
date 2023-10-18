import 'package:flutter/animation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../vibrate/vibrate.dart';

TextSpan buildClickableTextSpan(String text, {required VoidCallback onTap}) {
  return TextSpan(
    text: text,
    style: TextStyle(
      // color: Color(0xff343434),
      decoration: TextDecoration.underline,
    ),
    recognizer: TapGestureRecognizer()
      ..onTap = () {
        vibrate();
        onTap();
      },
  );
}
