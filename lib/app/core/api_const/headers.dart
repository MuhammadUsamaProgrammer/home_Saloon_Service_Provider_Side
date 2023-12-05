import 'package:home_saloon/app/core/cache/get_shared_pref.dart';

class HeadersAPI with SharedPrefGet {
  Future<Map<String, String>?> headerAPI() async {
    String key = await getToken();
    Map<String, String>? header = {
      "Authorization": "Bearer $key",
      "Accept": "*/*",
      "Content-Type": "application/json",
    };
    return header;
  }
}
