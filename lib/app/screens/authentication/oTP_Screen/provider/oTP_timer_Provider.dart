import 'dart:async';

import 'package:flutter/material.dart';

class OTPTimerProvider extends ChangeNotifier {
  late Timer _timer;
  int _seconds = 0;
  int get seconds => _seconds;
  // late Timer _canceltimer;

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

  // void dispose() {
  //   _canceltimer = Timer.periodic(Duration(seconds: 5), (timer) {
  //     _timer.cancel();
  //     _canceltimer.cancel();
  //     super.dispose();
  //     notifyListeners();
  //   });
  // }
}
