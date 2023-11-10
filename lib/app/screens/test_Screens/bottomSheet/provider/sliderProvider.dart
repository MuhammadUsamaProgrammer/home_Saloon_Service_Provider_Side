import 'package:flutter/material.dart';

class CustomSliderProvider extends ChangeNotifier {
  double _sliderValue = 1;
  double get sliderValue => _sliderValue;

  void onChangeSliderValue(double newValue) {
    _sliderValue = newValue;
    notifyListeners();
  }
}
