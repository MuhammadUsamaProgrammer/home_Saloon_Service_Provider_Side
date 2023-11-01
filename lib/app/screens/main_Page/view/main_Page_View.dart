import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/home_Screen/view/home_Screen.dart';
import 'package:home_saloon/app/screens/orders_Screen/view/order_Screen.dart';
import 'package:provider/provider.dart';
import '../../profile_Screen/view/profile_Screen.dart';
import '../components/bottom_Sheet_Of_Main_Screen.dart';
import '../provider/main_Page_Provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // inside 3 pages (home)(orders)(profile)
      body: Consumer<MainPageProvider>(
        builder: (context, value, child) {
          return Container(
            padding: EdgeInsets.only(bottom: 68),
            child: PageView(
              controller: value.controller,
              onPageChanged: value.setPage,
              children: [
                HomePage(),
                OrderScreen(),
                ProfileScreen(),
              ],
            ),
          );
        },
      ),
      // BottomButton
      bottomSheet: BottomSheetOfMainScreen(),
    );
  }
}
