import 'package:flutter/material.dart';

class CalenderProvider extends ChangeNotifier {
  static const int startYear = 2020;
  static const int lastYear = 2030;
  static const int totalMonth = 12;
  static const int thirtyOneDays = 31;
  static const int thirtyDays = 30;
  static const int leapYearFebruaryDays = 29;
  static const int notLeapYearFebruaryDays = 28;

//   List<Widget> daysList = [];
//   List<List<Widget>> monthList = [
//   List<Widget> daysList = [];
//   ];

//   List<List<List<Widget>>> yearList = [
//   List<List<Widget>> monthList = [];
//   ];

//   List<List<List<List<Widget>>>> calender = [
//     List<List<List<Widget>>> yearList = [];
//   ];
// // function to make calender
//   void CalenderLoops() {
//     for (int year = startYear; year <= lastYear; year++) {
//       // this loop is to add months in calender
//       for (int month = 1; month <= totalMonth; month++) {
//         // this condition for 31 days month
//         if (month == 1 ||
//             month == 3 ||
//             month == 5 ||
//             month == 7 ||
//             month == 8 ||
//             month == 10 ||
//             month == 12) {
//           for (int days = 1; days <= thirtyOneDays; days++) {
//             monthList.add(daysList);
//             daysList.clear();
//             notifyListeners();
//           }
//         }
//         // this condition for 30 days month
//         else if (month == 4 || month == 6 || month == 9 || month == 11) {
//           for (int days = 1; days <= thirtyDays; days++) {
//             monthList.add(daysList);
//             daysList.clear();
//             notifyListeners();
//           }
//         }
//         // this condition for february month

//         else {
//           // this condition for leap year february month
//           if (year % 4 == 0) {
//             for (int days = 1; days <= leapYearFebruaryDays; days++) {
//               monthList.add(daysList);
//               daysList.clear();
//               notifyListeners();
//             }
//           }
//           // this condition for not leap year february month

//           else {
//             for (int days = 1; days <= notLeapYearFebruaryDays; days++) {
//               monthList.add(daysList);
//               daysList.clear();
//               notifyListeners();
//             }
//           }
//         }
//         yearList.add(monthList);
//         monthList.clear();
//         notifyListeners();
//       }
//       calender.add(yearList);
//       yearList.clear();
//       notifyListeners();
//     }
//   }
}
