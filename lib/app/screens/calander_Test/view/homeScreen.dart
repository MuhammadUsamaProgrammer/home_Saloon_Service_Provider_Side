import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/app/screens/calander_Test/components/days_Switch_Case.dart';
import 'package:home_saloon/app/screens/calander_Test/components/monts_Swithc_Case.dart';
import 'package:home_saloon/app/screens/calander_Test/provider/calender_Provider.dart';
import 'package:home_saloon/app/screens/calander_Test/provider/testg.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Home'),
        // ),
        body: SafeArea(
      child: Container(
          height: context.MediaQueryHeight(),
          width: context.MediaQueryWidth(),
          child: Consumer<CalenderProvider>(builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          vibrate();
                          value.previousMonth();
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    Text(
                      calendar[value.year].yearNumber.toString() +
                          '  ' +
                          getMonthName(value.month),
                      style: MyTextStyle.status_Headings(context),
                    ),
                    IconButton(
                        onPressed: () {
                          vibrate();
                          value.nextMonth();
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                heightC(25),
                Container(
                  height: 65,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: calendar[value.year]
                        .monthList[value.month - 1]
                        .daysList
                        .length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            vibrate();
                            value.changeCurrentDay(index);
                          },
                          child: Container(
                            height: 62,
                            width: 52,
                            decoration: BoxDecoration(
                                color: index == value.currentDayIndex
                                    ? Colors.black
                                    : MyColors.primaryColor,
                                borderRadius: BorderRadius.circular(6)),
                            child: Column(
                              children: [
                                heightC(4),
                                Container(
                                  height: 30,
                                  width: 44,
                                  decoration: BoxDecoration(
                                      color: MyColors.backgroundColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Center(
                                    child: Text(
                                        getDayName(
                                          calendar[value.year]
                                              .monthList[value.month - 1]
                                              .daysList[index]
                                              .dayName,
                                        ),
                                        style:
                                            MyTextStyle.active_Orders(context)),
                                  ),
                                ),
                                heightC(5),
                                Text(
                                  calendar[value.year]
                                      .monthList[value.month - 1]
                                      .daysList[index]
                                      .dayNumber
                                      .toString(),
                                  style:
                                      MyTextStyle.unRead_notifications_Headings(
                                          context),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                heightC(10),
                Container(
                  height: 50,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            vibrate();
                            value.bookSlot(index);
                          },
                          child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: calendar[value.year]
                                          .monthList[value.month - 1]
                                          .daysList[value.currentDayIndex]
                                          .slotsList[index]
                                      ? Colors.grey
                                      : MyColors.primaryColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  'Slto No. ' + (index + 1).toString(),
                                  style:
                                      MyTextStyle.unRead_notifications_Headings(
                                          context),
                                ),
                              )),
                        ),
                      );
                    },
                  ),
                )
              ],
            );
          })),
    ));
  }
}

// import 'package:flutter/material.dart';
// import '../provider/testg.dart';

// class Home extends StatelessWidget {
//   const Home({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     YourClass yourInstance = YourClass();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Center(
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 400,
//                   child: ListView.builder(
//                     itemCount: yourInstance.calender[0].length,
//                     itemBuilder: (context, index) {
//                       return Text(index.toString());
//                     },
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // value.calendarLoops();
//                   },
//                   child: Text('Generate Calendar'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

