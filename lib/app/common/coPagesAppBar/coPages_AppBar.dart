import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

class CoPagesAppBarContent extends StatelessWidget {
  final String heading;
  final double padding;
  final IconData icon;
  CoPagesAppBarContent({
    super.key,
    required this.heading,
    this.padding = 10,
    this.icon = Icons.arrow_back_rounded,
  });

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
                      // back icon
                      Icon(
                        icon,
                        color: Colors.black,
                      ),
                    ],
                  ))),
          // appbar heading
          Text(
            heading,
            style: MyTextStyle.coPages_Headings(context),
          ),
          // this sizedbox is for balance to make heading perfectly in center
          widthW(50),
        ],
      ),
    );
  }
}

// appbar setting

PreferredSizeWidget? CoPagesAppBar(String heading) {
  return AppBar(
    leading: Text(''),
    leadingWidth: 0,
    shadowColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    title: CoPagesAppBarContent(
      heading: heading,
    ),
  );
}
