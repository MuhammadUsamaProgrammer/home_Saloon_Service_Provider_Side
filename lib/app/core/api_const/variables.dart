mixin Variables {
  Map<String, String> variableShortcode({required String shortCode}) {
    Map<String, String> jsonBody = {"shortcode": shortCode};
    return jsonBody;
  }

  Map<String, String> variableOTP(
      {required String shortCode, required String oTP}) {
    Map<String, String> jsonBody = {"shortcode": shortCode, "OTP": oTP};
    return jsonBody;
  }
}
