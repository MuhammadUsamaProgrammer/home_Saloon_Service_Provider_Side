import 'package:flutter/cupertino.dart';

class OnBoardingProvider with ChangeNotifier {
  PageController _controller = PageController();
  bool _isLastPage = false;

  PageController get controller => _controller;
  bool get isLastPage => _isLastPage;

  void setPage(int index) {
    _isLastPage = index == 2;
    notifyListeners();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
