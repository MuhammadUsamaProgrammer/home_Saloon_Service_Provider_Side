import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../onBoarding/components/dot_Indicator.dart';
import '../../onBoarding/components/onBoarding_screen.dart';
import '../provider/main_Page_Provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // pages
          Consumer<MainPageProvider>(
            builder: (context, value, child) {
              return Container(
                padding: EdgeInsets.only(bottom: 80),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: value.controller,
                  onPageChanged: value.setPage,
                  children: [
                    Screen(index: 0),
                    Screen(index: 1),
                    Screen(index: 2),
                  ],
                ),
              );
            },
          ),

          // dot indicator
          DotIndicator(),
        ],
      ),
      // BottomButton
      // bottomSheet: OnBoardingScreenBottomButton(),
    );
  }
}
