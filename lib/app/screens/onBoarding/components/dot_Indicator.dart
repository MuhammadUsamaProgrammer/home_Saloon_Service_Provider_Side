import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/theme/colors_theme_data.dart';
import '../../../common/cutomize_Sizedbox/CustomsizedBox.dart';
import '../provider/onBoarding_Provider.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        index > 0 ? widthW(8) : widthW(0),
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
        heightC(100)
      ],
    );
  }
}
