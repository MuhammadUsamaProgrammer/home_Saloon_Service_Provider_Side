import 'package:flutter/material.dart';

class PickImageProvider extends ChangeNotifier {
  String _imagePath = '';
  String get imagePath => _imagePath;

  void newImagePath(String pickedImagePath) {
    _imagePath = pickedImagePath;
    notifyListeners();
  }

  void removeImage() {
    _imagePath = '';
    notifyListeners();
  }
}
