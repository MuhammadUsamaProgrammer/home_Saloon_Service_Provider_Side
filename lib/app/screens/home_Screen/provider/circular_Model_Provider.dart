import 'package:flutter/foundation.dart';

class CircularPercentModel with ChangeNotifier {
  double percent = 0.75; // Initial percentage value

  void setPercent(double value) {
    percent = value;
    notifyListeners();
  }
}
