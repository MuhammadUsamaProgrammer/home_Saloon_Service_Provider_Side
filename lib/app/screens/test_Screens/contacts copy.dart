// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'contProvider.dart';

// class Contact extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final timeSlotsProvider = Provider.of<TimeSlotsProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Time Slots'),
//       ),
//       body: ListView.builder(
//         itemCount: timeSlotsProvider.months.length,
//         itemBuilder: (context, monthIndex) {
//           final month = timeSlotsProvider.months[monthIndex];
//           return Column(
//             children: [
//               Text(month.name, style: TextStyle(fontWeight: FontWeight.bold)),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: month.days.length,
//                 itemBuilder: (context, dayIndex) {
//                   final day = month.days[dayIndex];
//                   return Row(
//                     children: [
//                       Text(day.day.toString(),
//                           style: TextStyle(fontWeight: FontWeight.bold)),
//                       Expanded(
//                         child: ListView.builder(
//                           shrinkWrap: true,
//                           physics: NeverScrollableScrollPhysics(),
//                           itemCount: day.hours.length,
//                           itemBuilder: (context, hourIndex) {
//                             final hour = day.hours[hourIndex];
//                             return InkWell(
//                               onTap: () {
//                                 if (hour.isAvailable) {
//                                   timeSlotsProvider.setAvailability(
//                                     DateTime(2023, monthIndex + 1, day.day),
//                                     hour.time,
//                                     false,
//                                   );
//                                 }
//                               },
//                               child: Container(
//                                 color: hour.isAvailable
//                                     ? Colors.green
//                                     : Colors.grey,
//                                 child: Center(
//                                   child: Text(
//                                     hour.time.format(context),
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//               Divider(),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
