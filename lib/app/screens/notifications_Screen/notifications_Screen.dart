import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/coPagesAppBar/coPages_AppBar.dart';
import '../../common/vibrate/vibrate.dart';
import '../home_Screen/provider/notification_Provider.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: CoPagesAppBar(
        'Notifications',
      ),
      // body
      body: Container(
        height: 230,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            // notifications
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
          ],
        ),
      ),
    );
  }
}
