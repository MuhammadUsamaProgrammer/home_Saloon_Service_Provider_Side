import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/api_const/variables.dart';
import 'package:home_saloon/app/core/cache/get_shared_pref.dart';
import 'package:home_saloon/app/core/cache/set_shared_pref.dart';
import 'package:home_saloon/app/screens/auth/service/api_service.dart';

class AuthProvider extends ChangeNotifier
    with ShortCodeService, SharedPrefSet, SharedPrefGet, Variables {
  final formKey = GlobalKey<FormState>();
  TextEditingController shortCodeTextController = TextEditingController();

  //
  //
  //
  //

  bool _showOnBoarding = true;
  bool _stayLoggedIn = false;
  bool _isSelected = false;
  bool get stayLoggedIn => _stayLoggedIn;
  bool get isSelected => _isSelected;
  bool get showOnBoarding => _showOnBoarding;
  void toogleStayLoggedIn() async {
    _stayLoggedIn = !_stayLoggedIn;
    notifyListeners();
  }

  void activateStayLogin() async {
    _stayLoggedIn
        ? await setStayLogin(value: true)
        : await setStayLogin(value: false);
  }

  void checkFunction() async {
    _isSelected = await getStayLogin();
    notifyListeners();
  }

  void firstTimeshowOnBoarding() async {
    _showOnBoarding = await getShowOnboarding();
  }

  void offshowOnBoarding() async {
    await setShowOnboarding(value: false);
  }
  //
  //
  //
  //

  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();

  bool _isAllOTPFilled = false;
  bool get isAllOTPFilled => _isAllOTPFilled;

  void toogleisAllOTPFilled() {
    _isAllOTPFilled = pin1.text.isEmpty ||
            pin2.text.isEmpty ||
            pin3.text.isEmpty ||
            pin4.text.isEmpty
        ? false
        : true;
    notifyListeners();
  }

  void clearAllOtp() {
    pin1.clear();
    pin2.clear();
    pin3.clear();
    pin4.clear();
  }
  //
  //
  //
  //
  //

  Timer _timer = Timer(Duration(seconds: 1), () {});
  int _seconds = 0;
  int get seconds => _seconds;

  void startTimer() {
    _timer.cancel();
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

  //
  //
  //
  //
// login api hitting
  String temporaryShortCode = '';
  bool isWaiting = false;
  Future<bool> login() async {
    isWaiting = true;
    notifyListeners();
    temporaryShortCode = shortCodeTextController.text;

    bool response = await shortCodeApi(
        variables: variableShortcode(shortCode: temporaryShortCode));
    (response) {
      shortCodeTextController.clear();
    };

    startTimer();

    isWaiting = false;
    notifyListeners();

    return response;
  }

  Future<bool> oTPAPI() async {
    isWaiting = true;
    String oTP = '${pin1.text}${pin2.text}${pin3.text}${pin4.text}';
    print(oTP);
    String response = await oTPApi(
        variables: variableOTP(shortCode: temporaryShortCode, oTP: oTP));

    if (response != '') {
      setToken(token: response);
      clearAllOtp();
      isWaiting = false;
      temporaryShortCode = '';
      return true;
    } else {
      clearAllOtp();
      isWaiting = false;
      return false;
    }
  }
}
