import 'package:flutter/material.dart';

class HeightControlProvider extends ChangeNotifier {
  double _containerHeight = 70;
  double _sizedBoxHeight = 13;
  int _items = 7;

  double get containerHeight => _containerHeight;
  double get sizedBoxHeight => _sizedBoxHeight;
  int get items => _items;
}
