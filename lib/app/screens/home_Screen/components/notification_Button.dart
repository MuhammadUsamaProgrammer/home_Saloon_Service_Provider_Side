import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/core/routes/app_route_const.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/resources/icons/app_Icons.dart';
import '../../../core/theme/colors_theme_data.dart';
import '../../../widgets/toast_message/toast_message.dart';
import '../../../widgets/vibrate/vibrate.dart';
import '../../notifications_Screen/provider/notification_Provider.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NotificationProvider>(
      builder: (context, value, child) {
        log("NotificationButton isAllOpened: ${value.allOpened}");
        return InkWell(
          onTap: () {
            vibrate();
            if (value.allOpened == true)
              showToastMessage('No new notification');
            // open notification botton sheet function
            GoRouter.of(context).pushNamed(MyRoutes.notificationsScreen);
          },
          borderRadius: BorderRadius.circular(16),
          child: Container(
            height: 37,
            width: 37,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: MyColors.appBar_Items_Shadow_Color,
                  blurRadius: 5,
                  offset: Offset(1, 0),
                ),
              ],
            ),
            // mainly it is bell icon and new notification indicator dot
            child: Stack(
              children: [
                // notification Icon
                Center(child: SvgPicture.asset(MySvgPath.notification_Bell)),
                // notification dot
                if (value.allOpened == false)
                  Container(
                    alignment: Alignment(0.3, -0.3),
                    child: Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: Colors.white),
                        color: Color(0xffF74A4A),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
