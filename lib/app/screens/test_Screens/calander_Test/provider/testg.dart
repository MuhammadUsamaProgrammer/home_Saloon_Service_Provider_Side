import 'package:flutter/material.dart';

class calendertModel {
  List<YearsListModel> list;
  calendertModel({required this.list});
}

class YearsListModel {
  final int yearNumber;
  List<MonthListModel> list;
  YearsListModel({required this.yearNumber, required this.list});
  @override
  String toString() {
    return 'YearsListModel(yearNumber: $yearNumber, list: $list)';
  }
}

class MonthListModel {
  final int monthNumber;
  List<DaysListModel> list;
  MonthListModel({required this.monthNumber, required this.list});
  @override
  String toString() {
    return 'monthListtModel(monthNumber: $monthNumber, list: $list)';
  }
}

class DaysListModel {
  final int dayNumber;
  List<Widget> list;
  DaysListModel({required this.dayNumber, required this.list});
  @override
  String toString() {
    return 'DaysListModel(dayNumber: $dayNumber, list: $list)';
  }
}

class YourClass {
  List<YearsListModel> calendar = [];
  int startYear = 2020;
  int lastYear = 2020;

  // Constants for month days
  static const int thirtyOneDays = 31;
  static const int thirtyDays = 30;
  static const int leapYearFebruaryDays = 29;
  static const int notLeapYearFebruaryDays = 28;
  // function to make calender
  // List<YearsListModel> calender = [];
  void initializeCalendar() {
    for (int year = startYear; year <= lastYear; year++) {
      List<MonthListModel> yearList = [];

      for (int month = 1; month <= 12; month++) {
        List<DaysListModel> monthList = [];

        if ([1, 3, 5, 7, 8, 10, 12].contains(month)) {
          for (int dayNumber = 1; dayNumber <= thirtyOneDays; dayNumber++) {
            monthList.add(DaysListModel(dayNumber: dayNumber, list: []));
          }
        } else if ([4, 6, 9, 11].contains(month)) {
          for (int dayNumber = 1; dayNumber <= thirtyDays; dayNumber++) {
            monthList.add(DaysListModel(dayNumber: dayNumber, list: []));
          }
        } else {
          int daysInFebruary =
              (year % 4 == 0) ? leapYearFebruaryDays : notLeapYearFebruaryDays;

          for (int dayNumber = 1; dayNumber <= daysInFebruary; dayNumber++) {
            monthList.add(DaysListModel(dayNumber: dayNumber, list: []));
          }
        }

        yearList.add(MonthListModel(monthNumber: month, list: monthList));
      }

      calendar.add(YearsListModel(yearNumber: year, list: yearList));
    }

    print(calendar);
  }
}

// }



// import 'package:flutter/material.dart';

// class calendertModel {
//   List<YearsListModel> list;
//   calendertModel({required this.list});
// }

// class YearsListModel {
//   final int yearNumber;
//   List<monthListtModel> list;
//   YearsListModel({required this.yearNumber, required this.list});
//   @override
//   String toString() {
//     return 'YearsListModel(yearNumber: $yearNumber, list: $list)';
//   }
// }

// class monthListtModel {
//   final int monthNumber;
//   List<DaysListModel> list;
//   monthListtModel({required this.monthNumber, required this.list});
//   @override
//   String toString() {
//     return 'monthListtModel(monthNumber: $monthNumber, list: $list)';
//   }
// }

// class DaysListModel {
//   final int dayNumber;
//   List<Widget> list;
//   DaysListModel({required this.dayNumber, required this.list});
//   @override
//   String toString() {
//     return 'DaysListModel(dayNumber: $dayNumber, list: $list)';
//   }
// }

// List<Widget> daysList = [];

// List<DaysListModel> monthList = [];

// List<monthListtModel> yearList = [];

// List<YearsListModel> calender = [];

// class YourClass {
//   int startYear = 2020;
//   int lastYear = 2020;

//   // Constants for month days
//   static const int thirtyOneDays = 31;
//   static const int thirtyDays = 30;
//   static const int leapYearFebruaryDays = 29;
//   static const int notLeapYearFebruaryDays = 28;
//   // function to make calender
//   void initializeCalander() {
//     for (int year = startYear; year <= lastYear; year++) {
//       // // this loop is to add months in calender
//       for (int month = 1; month <= 12; month++) {
//         //   // this condition for 31 days month
//         if (month == 1 ||
//             month == 3 ||
//             month == 5 ||
//             month == 7 ||
//             month == 8 ||
//             month == 10 ||
//             month == 12) {
//           for (int dayNumber = 1; dayNumber <= thirtyOneDays; dayNumber++) {
//             monthList.add(DaysListModel(dayNumber: dayNumber, list: daysList));
//             daysList.clear();
//           }
//         }
//         //   // this condition for 30 days month
//         else if (month == 4 || month == 6 || month == 9 || month == 11) {
//           for (int dayNumber = 1; dayNumber <= thirtyDays; dayNumber++) {
//             monthList.add(DaysListModel(dayNumber: dayNumber, list: daysList));
//             daysList.clear();
//           }
//         }
//         // this condition for february month

//         else {
//           // this condition for leap year february month
//           if (year % 4 == 0) {
//             for (int dayNumber = 1;
//                 dayNumber <= leapYearFebruaryDays;
//                 dayNumber++) {
//               monthList
//                   .add(DaysListModel(dayNumber: dayNumber, list: daysList));
//               daysList.clear();
//             }
//           }
//           // this condition for not leap year february month

//           else {
//             for (int dayNumber = 1;
//                 dayNumber <= notLeapYearFebruaryDays;
//                 dayNumber++) {
//               monthList
//                   .add(DaysListModel(dayNumber: dayNumber, list: daysList));
//               daysList.clear();
//             }
//           }
//         }
//         yearList.add(monthListtModel(monthNumber: month, list: monthList));
//         monthList.clear();
//       }
//       calender.add(YearsListModel(yearNumber: year, list: yearList));
//       print(calender);
//       yearList.clear();
//     }
//   }
// }







// print('year ' +
//                   year.toString() +
//                   ',  month  ' +
//                   month.toString() +
//                   ',  day  ' +
//                   days.toString());
//               monthList.add(daysList);



// import 'package:flutter/material.dart';

// class YearsListModel {
//   final int yearNumber;
//   List<List<List<Widget>>> list;
//   YearsListModel({required this.yearNumber, required this.list});
// }

// class YourClass {
//    int startYear = 2020;
//    int lastYear = 2021;
//    int totalMonth = 12;
//    int thirtyOneDays = 31;
//    int thirtyDays = 30;
//    int leapYearFebruaryDays = 29;
//    int notLeapYearFebruaryDays = 28;
// // class YourClass {
//   List<Widget> a = [
//     Text('hloo'),
//   ];

//   List<List<Widget>> b = [];
//   List<List<List<Widget>>> c = [];
//   List<List<List<List<Widget>>>> d = [];

//   // YourClass() {
//   //   b = [a];
//   //   c = [b, b, b];
//   //   d = [c];
//   //   c.clear();
//   //   c.add(b);
//   //   c.add(b);
//   // }
//   List<Widget> daysList = [];
  
//   List<List<Widget>> monthList = [];

//   List<List<List<YearsListModel>>> yearList = [];

//   List<List<List<List<Widget>>>> calender = [];
//   // function to make calender
//   YourClass() {
//     for (int year = startYear; year <= lastYear; year++) {
//       // // this loop is to add months in calender
//       for (int month = 1; month <= totalMonth; month++) {
//         //   // this condition for 31 days month
//         if (month == 1 ||
//             month == 3 ||
//             month == 5 ||
//             month == 7 ||
//             month == 8 ||
//             month == 10 ||
//             month == 12) {
//           for (int days = 1; days <= thirtyOneDays; days++) {
//             monthList.add(daysList);
//           }
//         }
//         //   // this condition for 30 days month
//         else if (month == 4 || month == 6 || month == 9 || month == 11) {
//           for (int days = 1; days <= thirtyDays; days++) {
//             monthList.add(daysList);
//             daysList.clear();
//           }
//         }
//         // this condition for february month

//         else {
//           // this condition for leap year february month
//           if (year % 4 == 0) {
//             for (int days = 1; days <= leapYearFebruaryDays; days++) {
//               monthList.add(daysList);
//               daysList.clear();
//             }
//           }
//           // this condition for not leap year february month

//           else {
//             for (int days = 1; days <= notLeapYearFebruaryDays; days++) {
//               monthList.add(daysList);
//               daysList.clear();
//             }
//           }
//         }
//         yearList.add(YearsListModel(yearNumber: , list: list));
//         monthList.clear();
//       }
//       // calender.add(yearList);
//       print(yearList);
//       yearList.clear();
//     }
//   }
// }




// // print('year ' +
// //                   year.toString() +
// //                   ',  month  ' +
// //                   month.toString() +
// //                   ',  day  ' +
// //                   days.toString());
// //               monthList.add(daysList);
