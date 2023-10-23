import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/vibrate/vibrate.dart';
import '../provider/notification_Provider.dart';

class NotificationbottomSheet extends StatelessWidget {
  const NotificationbottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      // width: MediaQuery.of(context).size.width * .5,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 11,
          ),
          Center(
            child: Container(
              height: 5,
              width: 48,
              decoration: BoxDecoration(
                  color: Color(0xffCFCFD1),
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Center(
            child: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Playfair',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Consumer<NotificationProvider>(
            builder: (context, value, child) {
              return InkWell(
                onTap: () {
                  vibrate();
                  value.toogleNotification();
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Text(
                        '       Welcome to Home Saloon  🤗                           ',
                        style: TextStyle(fontFamily: 'DMSans', fontSize: 16),
                      ),
                      if (value.notification == true)
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.red),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
