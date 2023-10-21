import 'package:flutter/material.dart';

class OTPControllerProvider extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
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
}
