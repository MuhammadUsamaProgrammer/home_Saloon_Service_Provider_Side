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

  Future<void> setProfilePic({required String profilePic}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('profilePic', profilePic);
  }

  Future<void> setFirstName({required String firstName}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('firstName', firstName);
  }

  Future<void> setLirstName({required String lastName}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('lastName', lastName);
  }

  Future<void> setEmail({required String mail}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('mail', mail);
  }

  Future<void> setPhoneNumber({required String phoneNumber}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('phoneNumber', phoneNumber);
  }

  Future<void> setClearData() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', '');
    await prefs.setString('profilePic', '');
    await prefs.setString('firstName', '');
    await prefs.setString('lastName', '');
    await prefs.setString('mail', '');
    await prefs.setString('phoneNumber', '');
  }
}
