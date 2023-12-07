import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/api_const/variables.dart';
import 'package:home_saloon/app/core/cache/get_shared_pref.dart';
import 'package:home_saloon/app/core/cache/set_shared_pref.dart';
import 'package:home_saloon/app/screens/editProfile_Screen/model/edit_profile_model.dart';
import 'package:home_saloon/app/screens/editProfile_Screen/service/api_service.dart';
import 'package:home_saloon/app/widgets/toast_message/toast_message.dart';

class EditProfileDetailsProvider extends ChangeNotifier
    with EditProfileService, Variables, SharedPrefGet, SharedPrefSet {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phNumberController = TextEditingController();

  String _firstName = '';
  String _lastName = '';
  String _email = '';
  String _phNumber = '';
  String _profilePic = '';
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get email => _email;
  String get phNumber => _phNumber;
  String get imagePath => _profilePic;

  void initProfile() async {
    _firstName = await getFirstName();
    _lastName = await getLastName();
    _email = await getEmail();
    _phNumber = await getPhoneNumber();
    _profilePic = await getProfilePic();
    notifyListeners();
  }

  void newImagePath(String pickedImagePath) async {
    _profilePic = pickedImagePath;
    await setProfilePic(profilePic: pickedImagePath);
    notifyListeners();
  }

  void removeImage() async {
    _profilePic = '';
    await setProfilePic(profilePic: '');
    notifyListeners();
  }

  void onSave() async {
    if (firstNameController.text.isNotEmpty) {
      if (!RegExp(r'^[a-zA-Z]+$').hasMatch(firstNameController.text)) {
        showToastMessage('Please enter a valid first name with only letters');
      } else if (firstNameController.text.length < 3) {
        showToastMessage('Last name should contain minimum 3 letters');
      } else {
        _firstName = firstNameController.text;
        await setFirstName(firstName: _firstName);
        firstNameController.clear();
        notifyListeners();
      }
    }

    if (lastNameController.text.isNotEmpty) {
      if (!RegExp(r'^[a-zA-Z]+$').hasMatch(lastNameController.text)) {
        showToastMessage('Please enter a valid last name with only letters');
      } else if (lastNameController.text.length < 3) {
        showToastMessage('Last name should contain minimum 3 letters');
      } else {
        _lastName = lastNameController.text;
        await setLirstName(lastName: _lastName);
        lastNameController.clear();
        notifyListeners();
      }
    }

    if (emailController.text.isNotEmpty) {
      if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
          .hasMatch(emailController.text)) {
        showToastMessage('Please enter valid email');
      } else {
        _email = emailController.text;
        await setEmail(mail: _email);
        emailController.clear();
        notifyListeners();
      }
    }

    if (phNumberController.text.isNotEmpty) {
      if (phNumberController.text.length < 13) {
        showToastMessage('Please enter valid number');
      } else {
        _phNumber = phNumberController.text;
        await setPhoneNumber(phoneNumber: _phNumber);
        phNumberController.clear();
        notifyListeners();
      }
    }
  }

  Future<bool> getUserData() async {
    bool success = false;
    if (_firstName == '') {
      ProfileData profileData = await profileDataGet();
      if (profileData.success == true) {
        _firstName = profileData.data.firstname;
        _lastName = profileData.data.lastname;
        _email = profileData.data.email;
        _phNumber = profileData.data.phoneNumber;
        _profilePic = profileData.data.profilepic;

        await setFirstName(firstName: _firstName);
        await setLirstName(lastName: _lastName);
        await setEmail(mail: _email);
        await setPhoneNumber(phoneNumber: _phNumber);
        await setProfilePic(profilePic: _profilePic);
        notifyListeners();
        success = true;
      }
    } else {
      _firstName = await getFirstName();
      _lastName = await getLastName();
      _email = await getEmail();
      _phNumber = await getPhoneNumber();
      _profilePic = await getProfilePic();
      success = false;
      notifyListeners();
    }
    return success;
  }
}
