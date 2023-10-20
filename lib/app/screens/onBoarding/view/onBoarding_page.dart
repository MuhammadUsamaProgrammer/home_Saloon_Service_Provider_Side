import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/bottom_Button.dart';
import '../components/dot_Indicator.dart';
import '../components/onBoarding_screen.dart';
import '../provider/ionBoarding_Provider.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // pages
          Consumer<OnBoardingProvider>(
            builder: (context, value, child) {
              return Container(
                padding: EdgeInsets.only(bottom: 80),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: value.controller,
                  onPageChanged: value.setPage,
                  children: [
                    Screen(
                      index: 0,
                    ),
                    Screen(
                      index: 1,
                    ),
                    Screen(
                      index: 2,
                    ),
                  ],
                ),
              );
            },
          ),

          // dot indicator
          DotIndicator(),
        ],
      ),
      bottomSheet: OnBoardingScreenBottomButton(),
    );
  }
}
