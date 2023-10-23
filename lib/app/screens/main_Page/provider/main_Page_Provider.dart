import 'package:flutter/cupertino.dart';

class MainPageProvider with ChangeNotifier {
  PageController _controller = PageController();
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  PageController get controller => _controller;

  void setPage(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
