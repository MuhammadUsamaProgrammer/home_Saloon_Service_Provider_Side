// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class TimeSlotsProvider with ChangeNotifier {
//   List<Month> months = [];

//   TimeSlotsProvider() {
//     // Initialize your months, days, and hours here
//     for (int i = 1; i <= 12; i++) {
//       final daysInMonth = DateTime(2023, i).day;
//       final days = List<Day>.generate(
//         daysInMonth,
//         (dayIndex) {
//           final day = dayIndex + 1;
//           final hours = List<Hour>.generate(
//             8,
//             (hourIndex) => Hour(
//               time: TimeOfDay(hour: 9 + hourIndex, minute: 0),
//             ),
//           );
//           return Day(day: day, hours: hours);
//         },
//       );

//       months.add(
//           Month(name: DateFormat.MMMM().format(DateTime(2023, i)), days: days));
//     }
//   }

//   void setAvailability(DateTime date, TimeOfDay time, bool isAvailable) {
//     for (final month in months) {
//       for (final day in month.days) {
//         for (final hour in day.hours) {
//           if (month.name == DateFormat.MMMM().format(date) &&
//               day.day == date.day &&
//               hour.time == time) {
//             hour.isAvailable = isAvailable;
//           }
//         }
//       }
//     }
//     notifyListeners();
//   }
// }

// class Month {
//   final String name;
//   final List<Day> days;

//   Month({required this.name, required this.days});
// }

// class Day {
//   final int day;
//   final List<Hour> hours;

//   Day({required this.day, required this.hours});
// }

// class Hour {
//   final TimeOfDay time;
//   bool isAvailable;

//   Hour({required this.time, this.isAvailable = true});
// }
