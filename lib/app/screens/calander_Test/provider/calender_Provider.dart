import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/calander_Test/provider/testg.dart';

class CalenderProvider extends ChangeNotifier {
  int _startYear = 00;
  int _lastYear = 50;
  int _year = 23;
  int _month = 11;
  int _currentDayIndex = 18;
  int get year => _year;
  int get month => _month;
  int get currentDayIndex => _currentDayIndex;

  void nextMonth() {
    if (_month == 12) {
      if (_year < _lastYear) {
        _year++;
        _month = 1;
      } else if (_year == _lastYear) {}
    } else
      _month++;
    notifyListeners();
  }

  void previousMonth() {
    if (_month == 1) {
      if (_year > _startYear) {
        _year--;
        _month = 12;
      } else if (_year == _startYear) {}
    } else
      _month--;
    notifyListeners();
  }

  void changeCurrentDay(int newCurrentDay) {
    _currentDayIndex = newCurrentDay;
    notifyListeners();
  }

  void bookSlot(int index) {
    calendar[_year]
        .monthList[_month - 1]
        .daysList[_currentDayIndex]
        .slotsList[index] = true;
    notifyListeners();
  }

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
