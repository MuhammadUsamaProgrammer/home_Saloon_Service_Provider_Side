import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

class CoPagesAppBar extends StatelessWidget {
  final String heading;
  final double padding;
  CoPagesAppBar({super.key, required this.heading, this.padding = 10});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                vibrate();
                GoRouter.of(context).pop();
              },
              child: Container(
                  height: 60,
                  width: 50,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_rounded),
                    ],
                  ))),
          Text(
            heading,
            style: MyTextStyle.coPages_Headings(context),
          ),
          widthW(50),
        ],
      ),
    );
  }
}
