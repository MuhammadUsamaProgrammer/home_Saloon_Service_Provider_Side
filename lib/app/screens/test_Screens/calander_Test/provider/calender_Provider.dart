import 'package:flutter/material.dart';

class CalenderProvider extends ChangeNotifier {
  static const int startYear = 2020;
  static const int lastYear = 3020;
  static const int totalMonth = 12;
  static const int thirtyOneDays = 31;
  static const int thirtyDays = 30;
  static const int leapYearFebruaryDays = 29;
  static const int notLeapYearFebruaryDays = 28;
  void CalenderLoops() {
    for (int year = startYear; year <= lastYear; year++) {
      for (int month = 1; month <= totalMonth; month++) {
        if (month == 1 ||
            month == 3 ||
            month == 5 ||
            month == 7 ||
            month == 8 ||
            month == 10 ||
            month == 12) {
          for (int days = 1; days <= thirtyOneDays; days++) {}
        } else if (month == 4 || month == 6 || month == 9 || month == 11) {
          for (int days = 1; days <= thirtyDays; days++) {}
        } else {
          if (year % 4 == 0) {
            for (int days = 1; days <= leapYearFebruaryDays; days++) {}
          } else {
            for (int days = 1; days <= notLeapYearFebruaryDays; days++) {}
          }
        }
      }
    }
  }
}
