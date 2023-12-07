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
    await getToken();
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
  bool resend = true;

  void startTimer() {
    resend = false;
    _timer.cancel();
    _seconds = 30;
    _startTimer();
    notifyListeners();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        resend = true;
        timer.cancel();
        notifyListeners();
      } else {
        _seconds--;
        notifyListeners();
      }
    });
  }

  void resetTimer() {
    resend = false;
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
  bool isShortcodeWaiting = false;
  bool isOtpWaiting = false;
  Future<bool> shortCodeApiFun() async {
    resend = false;
    isShortcodeWaiting = true;
    bool response = false;
    notifyListeners();
    if (shortCodeTextController.text.isNotEmpty) {
      temporaryShortCode = shortCodeTextController.text;
    } else
      Null;

    response = await shortCodeApi(
        variables: variableShortcode(shortCode: temporaryShortCode));

    if (response == true) {
      shortCodeTextController.clear();
      clearAllOtp();
      isOtpWaiting = false;
    }
    ;
    startTimer();

    isShortcodeWaiting = false;
    notifyListeners();

    return response;
  }

  Future<bool> oTPAPIFun() async {
    resend = false;
    isOtpWaiting = true;
    toogleisAllOTPFilled();
    String response = '';
    String oTP = '${pin1.text}${pin2.text}${pin3.text}${pin4.text}';
    notifyListeners();
    print(oTP);
    response = await oTPApi(
        variables: variableOTP(shortCode: temporaryShortCode, oTP: oTP));

    if (response != '') {
      await setToken(token: response);
      notifyListeners();
      return true;
    } else {
      clearAllOtp();
      isOtpWaiting = false;
      toogleisAllOTPFilled();
      notifyListeners();
      return false;
    }
  }

  void onSuccessLogin() {
    clearAllOtp();
    isOtpWaiting = false;
    temporaryShortCode = '';
    toogleisAllOTPFilled();
    notifyListeners();
  }
}
