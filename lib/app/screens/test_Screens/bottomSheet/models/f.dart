// import 'package:flutter/material.dart';

// bool? _isEmergencychecked = false;
// bool? _isHighchecked = false;
// bool? _isMediumchecked = false;
// bool? _isLowchecked = false;
// void showAddItemBottomSheet(BuildContext context, Function setState) {
//   Widget status(String title) {
//     return Column(
//       children: [
//         ListTile(
//           dense: true,
//           visualDensity: const VisualDensity(vertical: -3),
//           title: Text(
//             title,
//             style: TextStyle(
//                 fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
//           ),
//         ),
//         Divider(
//           thickness: 2,
//           color: Colors.black,
//         ),
//       ],
//     );
//   }

//   {
//     showModalBottomSheet(
//       useSafeArea: true,
//       isScrollControlled: true,
//       context: context,
//       builder: (context) {
//         return SingleChildScrollView(
//           child: Column(
//             children: [
//               // filter
//               Padding(
//                 padding: EdgeInsets.only(top: 10, left: 7, right: 7),
//                 child: ListTile(
//                   dense: true,
//                   visualDensity: VisualDensity(vertical: -3),
//                   title: Text(
//                     'Filters',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   trailing: Text(
//                     'Reset',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromARGB(
//                           255, 10, 185, 39), // Replace with your desired color
//                     ),
//                   ),
//                 ),
//               ),
//               Divider(
//                 thickness: 2,
//                 color: Colors.black,
//               ),
//               // status
//               Theme(
//                 data: Theme.of(context).copyWith(
//                   listTileTheme: ListTileTheme.of(context).copyWith(
//                     dense: true,
//                     visualDensity: VisualDensity(vertical: -3),
//                   ),
//                 ),
//                 child: ExpansionTile(
//                   // onExpansionChanged: (bool) {},
//                   title: Text(
//                     'Status',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   children: [
//                     status('Open'),
//                     status('In Progress'),

//                     status('Exec Approval Required'),

//                     status('Payment In Process '),

//                     status('Delivery In Process'),

//                     status('Alnair:Doc Approval Required'),

//                     status('Alnair:Ops Approval Required'),

//                     status('Inventory Updates'),

//                     status('Resolved'),

//                     status('Closed'),
//                     // Add more ListTile widgets as needed
//                   ],
//                 ),
//               ),
//               Divider(
//                 thickness: 2,
//                 color: Colors.black,
//               ),
//               //  priority
//               Theme(
//                 data: Theme.of(context).copyWith(
//                   listTileTheme: ListTileTheme.of(context).copyWith(
//                     dense: true,
//                     visualDensity: VisualDensity(vertical: -3),
//                   ),
//                 ),
//                 child: // Add some spacing
//                     ExpansionTile(
//                   title: Text(
//                     'Priority',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   children: [
//                     CheckboxListTile(
//                       dense: true,
//                       visualDensity: VisualDensity(vertical: -3),
//                       title: Text(
//                         'Emergency',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       value: _isEmergencychecked,
//                       onChanged: (bool? newValue) {
//                         setState(() {
//                           _isEmergencychecked = newValue;
//                         });
//                       },
//                       activeColor: const Color.fromARGB(255, 170, 164, 164),
//                       checkColor: Colors.blue,
//                     ),

//                     CheckboxListTile(
//                       dense: true,
//                       visualDensity: VisualDensity(vertical: -3),
//                       title: Text(
//                         'High',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       value: _isHighchecked,
//                       onChanged: (bool? newValue) {
//                         _isHighchecked = newValue;
//                         setState();
//                       },
//                       activeColor: const Color.fromARGB(255, 170, 164, 164),
//                       checkColor: Colors.blue,
//                     ),
//                     CheckboxListTile(
//                       dense: true,
//                       visualDensity: VisualDensity(vertical: -3),
//                       title: Text(
//                         'Medium',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       value: _isMediumchecked,
//                       onChanged: (bool? newValue) {
//                         _isMediumchecked = newValue;
//                         setState();
//                       },
//                       activeColor: const Color.fromARGB(255, 170, 164, 164),
//                       checkColor: Colors.blue,
//                     ),
//                     CheckboxListTile(
//                       dense: true,
//                       visualDensity: VisualDensity(vertical: -3),
//                       title: Text(
//                         'Low',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       value: _isLowchecked,
//                       onChanged: (bool? newValue) {
//                         _isLowchecked = newValue;
//                         setState();
//                       },
//                       activeColor: const Color.fromARGB(255, 170, 164, 164),
//                       checkColor: Colors.blue,
//                     ),
//                     // Add more CheckboxListTile widgets as needed
//                   ],
//                 ),
//               ),
//               Divider(
//                 thickness: 2,
//                 color: Colors.black,
//               ),
//               // date created
//               Theme(
//                 data: Theme.of(context).copyWith(
//                   listTileTheme: ListTileTheme.of(context).copyWith(
//                     dense: true,
//                     visualDensity: VisualDensity(vertical: -3),
//                   ),
//                 ),
//                 child: // Add some spacing
//                     ExpansionTile(
//                   title: Text(
//                     'Date Created',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),
//               Divider(
//                 thickness: 2,
//                 color: Colors.black,
//               ),
//               // show result
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
// /////////////////////////////////////////////////////////////////////
// ///
