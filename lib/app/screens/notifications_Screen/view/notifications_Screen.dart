import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../../../common/vibrate/vibrate.dart';
import '../provider/notification_Provider.dart';
import '../models/notifications_Models.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body
      body: Consumer<NotificationProvider>(builder: (context, value, child) {
        return SafeArea(
          child: Container(
            height: context.MediaQueryHeight(),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // notification
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    color: value.tileBackgroundColor(0),
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 2,
                      ),
                      width: context.MediaQueryWidth(),
                      height: 80,
                      decoration: BoxDecoration(
                          color: MyColors.backgroundColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100)),
                          boxShadow: [
                            BoxShadow(
                                color: MyColors.text_field_color,
                                offset: Offset(-0.3, 0.3)),
                          ]),
                      child: Row(
                        children: [
                          widthW(20),
                          Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            child: InkWell(
                              onTap: () {
                                vibrate();
                                context.pop();
                              },
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.arrow_downward_rounded,
                                ),
                              ),
                            ),
                          ),
                          widthW(20),
                          Center(
                            child: Text(
                              'Notification',
                              style: MyTextStyle.notification_Page_Heading(
                                  context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // notifications Tiles
                  Container(
                    height: (notificationsModel.length - 1) * 82,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: notificationsModel.length - 1,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              vibrate();
                              value.toogleNotification(index);
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              color: value.tileBackgroundColor(index + 1),
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                margin: EdgeInsets.only(
                                  bottom: 2,
                                ),
                                height: 80,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: value.tileBackgroundColor(index),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(40)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              255, 139, 139, 139),
                                          offset: Offset(-0.3, 0.3)),
                                    ]),
                                child: Row(
                                  children: [
                                    widthW(20),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: MyColors.backgroundColor,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              notificationsModel[index].image,
                                            ),
                                            fit: BoxFit.cover),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                MyColors.container_Shadow_Color,
                                            blurRadius: 13,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                    ),
                                    widthW(8),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width:
                                              context.MediaQueryWidth() - 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                notificationsModel[index]
                                                    .heading,
                                                style: notificationsModel[index]
                                                        .opened
                                                    ? MyTextStyle
                                                        .Readed_notifications_Headings(
                                                            context)
                                                    : MyTextStyle
                                                        .unRead_notifications_Headings(
                                                            context),
                                              ),
                                              Text(
                                                notificationsModel[index].time,
                                                style: notificationsModel[index]
                                                        .opened
                                                    ? MyTextStyle
                                                        .Readed_notification_time(
                                                            context)
                                                    : MyTextStyle
                                                        .unRead_notification_time(
                                                            context),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width:
                                              context.MediaQueryWidth() - 100,
                                          child: Text(
                                            notificationsModel[index].text,
                                            style: notificationsModel[index]
                                                    .opened
                                                ? MyTextStyle
                                                    .Readed_notifications_Text(
                                                        context)
                                                : MyTextStyle
                                                    .unRead_notifications_Text(
                                                        context),
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
