mixin Variables {
  Map<String, String> variableShortcode({required String shortCode}) {
    Map<String, String> jsonBody = {"shortcode": shortCode};
    return jsonBody;
  }

  Map<String, dynamic> variableOTP(
      {required String shortCode, required String oTP}) {
    Map<String, dynamic> jsonBody = {
      "shortcode": shortCode,
      "OTP": int.parse(oTP)
    };
    return jsonBody;
  }
}
