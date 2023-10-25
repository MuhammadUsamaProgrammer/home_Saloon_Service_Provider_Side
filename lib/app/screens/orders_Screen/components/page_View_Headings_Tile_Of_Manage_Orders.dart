import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';

import '../models/service_Status_Model.dart';
import '../provider/order_Screen_Provider.dart';

class PageViewHeadingTileOfManageOrders extends StatelessWidget {
  final int index;
  const PageViewHeadingTileOfManageOrders({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrderScreenProvider>(
      builder: (context, value, child) {
        return InkWell(
          onTap: () {
            vibrate();
            value.changePage(index);
          },
          borderRadius: BorderRadius.circular(36),
          child: AnimatedContainer(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 400),
            height: 34,
            width: 81,
            decoration: BoxDecoration(
                color: index == value.currentIndex
                    ? MyColors.primaryColor
                    : MyColors.backgroundColor,
                borderRadius: BorderRadius.circular(36)),
            child: Center(
              child: Text(
                serviceStatusModel[index].tileTital,
                style: index == value.currentIndex
                    ? MyTextStyle.tabBar_Selected_Heading(context,
                        textSize: index == 3 ? 12 : 14)
                    : MyTextStyle.tabBar_Unselected_Heading(
                        context,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
