import 'package:flutter/cupertino.dart';

class MainPageProvider with ChangeNotifier {
  PageController _controller = PageController();
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  PageController get controller => _controller;

  void changePage(int index) {
    controller.jumpToPage(index);
    // controller.animateToPage(index,
    //     duration: Duration(milliseconds: 1200),
    // curve: Curves.fastEaseInToSlowEaseOut);
    _currentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
