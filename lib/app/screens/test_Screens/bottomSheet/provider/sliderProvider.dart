import 'package:flutter/material.dart';

class CustomSliderProvider extends ChangeNotifier {
  int _sliderValue = 1;
  int get sliderValue => _sliderValue;

  void onChangeSliderValue(int newValue) {
    _sliderValue = newValue;
    notifyListeners();
  }
}
