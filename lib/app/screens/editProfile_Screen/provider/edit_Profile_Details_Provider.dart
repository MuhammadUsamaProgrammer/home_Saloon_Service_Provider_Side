import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/toast_message/toast_message.dart';

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
    if (firstNameController.text.isNotEmpty) {
      if (!RegExp(r'^[a-zA-Z]+$').hasMatch(firstNameController.text)) {
        showToastMessage('Please enter a valid first name with only letters');
      } else if (firstNameController.text.length < 3) {
        showToastMessage('Last name should contain minimum 3 letters');
      } else {
        _firstName = firstNameController.text;
        firstNameController.clear();
        notifyListeners();
      }
    }

    if (secondNameController.text.isNotEmpty) {
      if (!RegExp(r'^[a-zA-Z]+$').hasMatch(secondNameController.text)) {
        showToastMessage('Please enter a valid last name with only letters');
      } else if (secondNameController.text.length < 3) {
        showToastMessage('Last name should contain minimum 3 letters');
      } else {
        _secondName = secondNameController.text;
        secondNameController.clear();
        notifyListeners();
      }
    }

    if (emailController.text.isNotEmpty) {
      if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
          .hasMatch(emailController.text)) {
        showToastMessage('Please enter valid email');
      } else {
        _email = emailController.text;
        emailController.clear();
        notifyListeners();
      }
    }

    if (phNumberController.text.isNotEmpty) {
      if (phNumberController.text.length < 13) {
        showToastMessage('Please enter valid number');
      } else {
        _phNumber = phNumberController.text;
        notifyListeners();
      }
    }
    // firstNameController.clear();
    // secondNameController.clear();
    // emailController.clear();
    // phNumberController.clear();
    // notifyListeners();
  }
}

//  if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
//                   return 'Please enter a valid name with only letters';
                // }
