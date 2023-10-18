import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../common/vibrate/vibrate.dart';
import '../provider/bottomNavBarProvider.dart';

class BottomNavBar extends StatelessWidget {
  final List<Widget> screens = [
    // HomePage(),
    // CatagoriesScreen(),
    // CartScreen(),
    // FavouriteScreen(),
    // OrderScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Consumer<BottomNavBarProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: screens[provider.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: IconThemeData(size: 36),
            selectedItemColor: Color(0xff343434),
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
  }
}
