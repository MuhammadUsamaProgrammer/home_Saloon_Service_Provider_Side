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
      body: Consumer<MainPageProvider>(
        builder: (context, value, child) {
          return Container(
            padding: EdgeInsets.only(bottom: 80),
            child: PageView(
              physics: BouncingScrollPhysics(),
              controller: value.controller,
              onPageChanged: value.setPage,
              children: [
                HomePage(),
                ProfileScreen(),
                OrderScreen(),
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
