import 'package:flutter/material.dart';

class OrderScreenProvider extends ChangeNotifier {
  //
  PageController _controller = PageController();
  PageController get controller => _controller;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void setPage(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void changePage(int index) {
    controller.animateToPage(index,
        duration: Duration(milliseconds: 400), curve: Curves.fastOutSlowIn);
    notifyListeners();
  }

  void onChangePanal() {
    _currentIndex = 0;
    notifyListeners();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
