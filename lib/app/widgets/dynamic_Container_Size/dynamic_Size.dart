import 'package:flutter/material.dart';

class Dynamic {
  static double dynamicSize(double sizee, context) {
    return MediaQuery.of(context).size.width * sizee / 354.2;
  }
}
