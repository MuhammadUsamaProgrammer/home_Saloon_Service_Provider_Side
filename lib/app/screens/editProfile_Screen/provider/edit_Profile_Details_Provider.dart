import 'package:flutter/material.dart';

class EditProfileDetailsProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phNumberController = TextEditingController();

  String _firstName = 'Anny';
  String _secondName = 'Peter';
  String _email = 'xyzflutter@gmai.com';
  String _phNumber = '+92 3017654321';
  String get firstName => _firstName;
  String get secondName => _secondName;
  String get email => _email;
  String get phNumber => _phNumber;

  void onSave() {
    if (firstNameController.text.isNotEmpty)
      _firstName = firstNameController.text;
    if (secondNameController.text.isNotEmpty)
      _secondName = secondNameController.text;
    if (emailController.text.isNotEmpty) _email = emailController.text;
    if (phNumberController.text.isNotEmpty) _phNumber = phNumberController.text;
    firstNameController.clear();
    secondNameController.clear();
    emailController.clear();
    phNumberController.clear();
    notifyListeners();
  }
}
