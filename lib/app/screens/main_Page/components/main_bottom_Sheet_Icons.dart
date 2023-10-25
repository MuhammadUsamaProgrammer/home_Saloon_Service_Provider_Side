import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/screens/main_Page/provider/main_Page_Provider.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';

import '../../orders_Screen/provider/order_Screen_Provider.dart';

class MainBottomSheetsIcons extends StatelessWidget {
  final int index;
  final String svg;
  final String name;
  const MainBottomSheetsIcons(
      {super.key, required this.svg, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    // final orderScreenProvider = Provider.of<OrderScreenProvider>(context);
    return Consumer<OrderScreenProvider>(
      builder: (context, orderScreenProvider, child) {
        return Consumer<MainPageProvider>(
          builder: (context, value, child) {
            return InkWell(
              onTap: () {
                value.changePage(index);
                orderScreenProvider.onChangePanal();
              },
              child: Container(
                width: 100,
                child: Column(
                  children: [
                    // bottom Icon
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: index == value.currentIndex ? 32 : 26,
                      child: SvgPicture.asset(
                        svg,
                        color: index == value.currentIndex
                            ? MyColors.primaryColor
                            : MyColors.unSelected_bottomBar_Icons_Color,
                        width: 32,
                        // height: 30,
                      ),
                    ),
                    heightC(6),
                    // icon text
                    Text(
                      name,
                      style: index == value.currentIndex
                          ? MyTextStyle.bottomBar_Selected_Text(context)
                          : MyTextStyle.bottomBar_Unselected_Text(context),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
