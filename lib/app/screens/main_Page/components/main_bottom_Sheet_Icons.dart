import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/screens/main_Page/provider/main_Page_Provider.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';

class MainBottomSheetsIcons extends StatelessWidget {
  final int index;
  final String svg;
  final String name;
  const MainBottomSheetsIcons(
      {super.key, required this.svg, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainPageProvider>(
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () {
            value.setPage(index);
            value.controller.jumpToPage(
              index,
            );
          },
          child: Column(
            children: [
              SvgPicture.asset(
                svg,
                color: index == value.currentIndex
                    ? MyColors.primaryColor
                    : MyColors.unSelected_bottomBar_Icons_Color,
              ),
              heightC(6),
              Text(
                name,
                style: index == value.currentIndex
                    ? AppTextStyle.bottomBar_Selected_Text(context)
                    : AppTextStyle.bottomBar_Unselected_Text(context),
              )
            ],
          ),
        );
      },
    );
  }
}
