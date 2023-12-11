import 'package:shared_preferences/shared_preferences.dart';

mixin SharedPrefGet {
  Future<bool> getStayLogin() async {
    var prefs = await SharedPreferences.getInstance();
    bool value = await prefs.getBool('stayLoggedIn') ?? false;
    return value;
  }

  Future<bool> getShowOnboarding() async {
    var prefs = await SharedPreferences.getInstance();
    bool value = await prefs.getBool('showOnBoarding') ?? true;
    return value;
  }

  Future<String> getToken() async {
    var prefs = await SharedPreferences.getInstance();
    String value = await prefs.getString('token') ?? '';
    return value;
  }

  Future<String> getProfilePic() async {
    var prefs = await SharedPreferences.getInstance();
    String value = await prefs.getString('profilePic') ?? '';
    return value;
  }

  Future<String> getFirstName() async {
    var prefs = await SharedPreferences.getInstance();
    String value = await prefs.getString('firstName') ?? '';
    return value;
  }

  Future<String> getLastName() async {
    var prefs = await SharedPreferences.getInstance();
    String value = await prefs.getString('lastName') ?? '';
    return value;
  }

  Future<String> getEmail() async {
    var prefs = await SharedPreferences.getInstance();
    String value = await prefs.getString('mail') ?? '';
    return value;
  }

  Future<String> getPhoneNumber() async {
    var prefs = await SharedPreferences.getInstance();
    String value = await prefs.getString('phoneNumber') ?? '';
    return value;
  }
}
