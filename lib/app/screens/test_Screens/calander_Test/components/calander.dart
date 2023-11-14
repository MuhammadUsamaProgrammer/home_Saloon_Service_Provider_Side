import 'package:flutter/material.dart';

import '../provider/testg.dart';

class CalendarWidget extends StatelessWidget {
  final List<YearsListModel> calendar;

  CalendarWidget({required this.calendar});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calendar.length,
      itemBuilder: (context, yearIndex) {
        YearsListModel year = calendar[yearIndex];

        return ExpansionTile(
          title: Text('Year ${year.yearNumber}'),
          children: year.list.map((month) {
            return ListTile(
              title: Text('Month ${month.monthNumber}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: month.list.map((day) {
                  return Text('Day ${day.dayNumber}');
                }).toList(),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
