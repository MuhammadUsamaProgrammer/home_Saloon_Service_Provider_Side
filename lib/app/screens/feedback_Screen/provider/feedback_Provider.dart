import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/toast_message/toast_message.dart';
import '../../../../utils/localization/keys/codegen_loader.g.dart';

class FeedbackProvider extends ChangeNotifier {
  TextEditingController feedbackTextController = TextEditingController();
  bool _isDropdownOpen = false;
  bool get isDropDownOpen => _isDropdownOpen;
  String _heading_Text = LocaleKeys.Select_a_Option.tr();
  String get heading_Text => _heading_Text;

  void changeSelectedIndex(int newIndex) {
    _isDropdownOpen = false;
    _heading_Text = dropdownMenuItem[newIndex];
    notifyListeners();
  }

  void toogleDropDown() {
    _isDropdownOpen = !_isDropdownOpen;
    notifyListeners();
  }

  void submit(BuildContext context) {
    if (_heading_Text == LocaleKeys.Select_a_Option.tr()) {
      showToastMessage('Please select any option first!');
    } else {
      feedbackTextController.clear();
      _heading_Text = LocaleKeys.Select_a_Option.tr();
      Navigator.pop(context);
    }
  }

  List<String> dropdownMenuItem = [
    'Lorem Ipsum',
    'simply dummy',
    'typesetting',
    'typesetting industry',
  ];
}
