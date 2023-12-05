import 'package:shared_preferences/shared_preferences.dart';

mixin SharedPrefSet {
  Future<void> setStayLogin({required bool value}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool('stayLoggedIn', value);
  }

  Future<void> setShowOnboarding({required bool value}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool('showOnBoarding', value);
  }

  Future<void> setToken({required String token}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }
}
