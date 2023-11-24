import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/toast_message/toast_message.dart';
import 'package:home_saloon/app/screens/home_Screen/view/home_Screen.dart';
import 'package:home_saloon/app/screens/my_Services/view/my_Services_Screen.dart';
import 'package:home_saloon/app/screens/orders_Screen/view/order_Screen.dart';
import 'package:provider/provider.dart';
import '../../profile_Screen/view/profile_Screen.dart';
import '../components/bottom_Sheet_Of_Main_Screen.dart';
import '../provider/main_Page_Provider.dart';

// ignore: must_be_immutable
class MainPage extends StatelessWidget {
  DateTime? lastPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // inside 3 pages (home)(orders)(profile)
      body: WillPopScope(
        onWillPop: () async {
          final now = DateTime.now();
          final maxDuration = Duration(seconds: 2);
          final isWarning =
              lastPressed == null || now.difference(lastPressed!) > maxDuration;

          if (isWarning) {
            lastPressed = DateTime.now();
            showToastMessage('Double tap to close app');
            return false;
          } else {
            return true;
          }
        },
        child: Consumer<MainPageProvider>(
          builder: (context, value, child) {
            return Container(
              padding: EdgeInsets.only(bottom: 68),
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: value.controller,
                // onPageChanged: value.setPage,
                children: [
                  HomePage(),
                  OrderScreen(),
                  MyServices(),
                  ProfileScreen(),
                ],
              ),
            );
          },
        ),
      ),
      // BottomButton
      bottomSheet: BottomSheetOfMainScreen(),
    );
  }
}
