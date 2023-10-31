import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';

class FeedbackProvider extends ChangeNotifier {
  int? _index = 0;
  int? get index => _index;

  void changeIndex(int? newIndex) {
    _index = newIndex;
    notifyListeners();
  }

  List<DropdownMenuItem<int>>? dropdownMenuItem = [
    DropdownMenuItem(
      value: 0,
      child: Text(LocaleKeys.Select_a_Option.tr()),
    ),
    DropdownMenuItem(
      value: 1,
      child: Text('Lorem Ipsum'),
    ),
    DropdownMenuItem(
      value: 2,
      child: Text('simply dummy'),
    ),
    DropdownMenuItem(
      value: 3,
      child: Text('typesetting'),
    ),
    DropdownMenuItem(
      value: 4,
      child: Text('typesetting industry'),
    ),
  ];
}
