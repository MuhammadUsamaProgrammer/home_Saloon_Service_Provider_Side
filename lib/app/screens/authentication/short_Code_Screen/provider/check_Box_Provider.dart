import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckBoxProvider extends ChangeNotifier {
  bool _showOnBoarding = true;
  bool _stayLoggedIn = false;
  bool _isSelected = false;
  bool get stayLoggedIn => _stayLoggedIn;
  bool get isSelected => _isSelected;
  bool get showOnBoarding => _showOnBoarding;
  void toogleStayLoggedIn() async {
    var prefs = await SharedPreferences.getInstance();
    _stayLoggedIn = !_stayLoggedIn;
    _stayLoggedIn
        ? await prefs.setBool('stayLoggedIn', true)
        : await prefs.setBool('stayLoggedIn', false);
    notifyListeners();
  }

  void checkFunction() async {
    var prefs = await SharedPreferences.getInstance();
    _isSelected = await prefs.getBool('stayLoggedIn') ?? false;
    notifyListeners();
  }

  void firstTimeshowOnBoarding() async {
    var prefs = await SharedPreferences.getInstance();
    _showOnBoarding = await prefs.getBool('showOnBoarding') ?? true;
  }

  void offshowOnBoarding() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool('showOnBoarding', false);
  }
}
