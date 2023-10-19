import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 8,
                    width: 72,
                    child: Consumer<OnBoardingProvider>(
                      builder: (context, value, child) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                index > 0
                                    ? addHorizontalSpace(8)
                                    : addHorizontalSpace(0),
                                AnimatedContainer(
                                  curve: Curves.easeInOut,
                                  duration: Duration(milliseconds: 500),
                                  width: index == value.currentIndex ? 40 : 8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: index == value.currentIndex
                                        ? MyColors.primaryColor
                                        : MyColors.unSelected_index_color,
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                addVerticalSpace(100)
              ],
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
