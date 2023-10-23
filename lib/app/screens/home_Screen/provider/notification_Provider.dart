import 'package:flutter/material.dart';

class NotificationProvider extends ChangeNotifier {
  bool _notification = true;
  bool get notification => _notification;

  void toogleNotification() {
    _notification = false;
    notifyListeners();
  }
}
