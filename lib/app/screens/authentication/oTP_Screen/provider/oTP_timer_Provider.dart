import 'dart:async';

import 'package:flutter/material.dart';

class OTPTimerProvider extends ChangeNotifier {
  late Timer _timer;
  int _seconds = 0;
  int get seconds => _seconds;

  void startTimer() {
    _seconds = 30;
    _startTimer();
    notifyListeners();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        timer.cancel();
        notifyListeners();
      } else {
        _seconds--;
        notifyListeners();
      }
    });
  }

  void resetTimer() {
    _timer.cancel();
    _startTimer();
    notifyListeners();
  }

  void dispose() {
    _timer.cancel();
    super.dispose();
    notifyListeners();
  }
}
