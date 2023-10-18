import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoperrs/app/common/vibrate/vibrate.dart';
import 'package:shoperrs/app/screens/HomePage/view/home_Page.dart';
import 'package:shoperrs/app/screens/battomNevPage/provider/bottomNavBarProvider.dart';
import 'package:shoperrs/app/screens/cart/view/cartScreen.dart';
import 'package:shoperrs/app/screens/catagories/view/catagoriesScreen.dart';
import 'package:shoperrs/app/screens/favourite/view/favouriteScreen.dart';
import 'package:shoperrs/app/screens/orders/view/orderScreen.dart';

import '../../theme/provider/theme_Provider.dart';

class BottomNavBar extends StatelessWidget {
  final List<Widget> screens = [
    HomePage(),
    CatagoriesScreen(),
    CartScreen(),
    FavouriteScreen(),
    OrderScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Consumer<ThemeProvider>(
      builder: (context, theme, child) {
        return Consumer<BottomNavBarProvider>(
          builder: (context, provider, child) {
            return Scaffold(
              body: screens[provider.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                selectedIconTheme: IconThemeData(size: 36),
                selectedItemColor: theme.isLightMode
                    ? Color(0xff343434)
                    : const Color.fromARGB(228, 255, 255, 255),
                unselectedItemColor: Color(0xff999999),
                currentIndex: provider.currentIndex,
                onTap: (index) {
                  vibrate();
                  provider.changeIndex(index);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.category_rounded),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_outlined),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_rounded),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.align_vertical_bottom_rounded),
                    label: '',
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
