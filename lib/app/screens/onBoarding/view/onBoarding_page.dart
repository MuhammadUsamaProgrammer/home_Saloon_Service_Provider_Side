import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../common/buttons/textButton.dart';
import '../../../common/vibrate/vibrate.dart';
import '../onBoarding_Screens/intro_screen1.dart';
import '../onBoarding_Screens/intro_screen2.dart';
import '../onBoarding_Screens/intro_screen3.dart';
import 'package:provider/provider.dart';
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
                    controller: value.controller,
                    onPageChanged: value.setPage,
                    children: [
                      Screen1(),
                      Screen2(),
                      Screen3(),
                    ],
                  ),
                );
              },
            ),

            // dot indicator
            Consumer<OnBoardingProvider>(
              builder: (context, value, child) {
                return Container(
                  alignment: Alignment(0, 0.75),
                  child: SmoothPageIndicator(
                    controller: value.controller,
                    count: 3,
                    effect: WormEffect(
                      activeDotColor: Color(0xffCA8385),
                      dotHeight: 4,
                      dotWidth: 19,
                      radius: 10,
                      paintStyle: PaintingStyle.fill,
                      strokeWidth: 10.0,
                      dotColor: Color(0xffE4E4E5),
                    ),
                    onDotClicked: (index) => value.controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut),
                  ),
                );
              },
            )
          ],
        ),
        bottomSheet: Consumer<OnBoardingProvider>(
          builder: (context, value, child) {
            return value.isLastPage
                ? Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, bottom: 18),
                    child: Button1(
                      text: 'Get Started',
                      onTap: () {
                        vibrate();
                        // Get.toNamed(RouteName.signInPage);
                      },
                    ),
                  )
                : Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, bottom: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 58,
                          width: 312,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  vibrate();
                                  value.controller.jumpToPage(2);
                                },
                                child: Text(
                                  'Skip',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(153, 153, 153, 1),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  vibrate();
                                  value.controller.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                    color: Color(0xff333333),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ));
  }
}
