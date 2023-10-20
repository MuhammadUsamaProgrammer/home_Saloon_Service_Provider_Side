import 'package:flutter/material.dart';

class CheckBoxProvider extends ChangeNotifier {
  bool _stayLoggedIn = false;
  bool get stayLoggedIn => _stayLoggedIn;
  void toogleStayLoggedIn() {
    _stayLoggedIn = !_stayLoggedIn;
    notifyListeners();
  }
}
