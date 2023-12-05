import 'package:shared_preferences/shared_preferences.dart';

mixin SharedPrefGet {
  Future<bool> getStayLogin() async {
    var prefs = await SharedPreferences.getInstance();
    bool value = await prefs.getBool('stayLoggedIn') ?? false;
    return value;
  }

  Future<bool> getShowOnboarding() async {
    var prefs = await SharedPreferences.getInstance();
    bool value = await prefs.getBool('showOnBoarding') ?? false;
    return value;
  }

  Future<String> getToken() async {
    var prefs = await SharedPreferences.getInstance();
    String value = await prefs.getString('token') ?? '';
    return value;
  }
}
