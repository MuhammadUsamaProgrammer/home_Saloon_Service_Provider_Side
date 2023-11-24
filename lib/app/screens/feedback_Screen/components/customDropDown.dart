import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/app/screens/feedback_Screen/provider/feedback_Provider.dart';
import 'package:provider/provider.dart';
import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../../utils/Theme/text_Theme_Data.dart';

class CustomDropDown extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onTap;
  final String heading_Text;
  final String dropdown_main_Text;
  final List list;
  final VoidCallback onTapTile;
  const CustomDropDown(
      {super.key,
      required this.onTapTile,
      required this.list,
      required this.onTap,
      required this.heading_Text,
      required this.isOpen,
      required this.dropdown_main_Text});

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedbackProvider>(builder: (context, value, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              vibrate();
              onTap();
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: MyColors.backgroundColor,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                        color: MyColors.recent_Payment_Tile_Shadow_Color,
                        blurRadius: 7,
                        offset: Offset(-1, 2))
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      value.heading_Text,
                      style: MyTextStyle.select_Options_In_Feedback(context),
                    ),
                    Icon(isOpen
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded),
                  ],
                ),
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: isOpen ? 10 : 0,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: isOpen ? 200 : 0,
            decoration: BoxDecoration(
                color: MyColors.backgroundColor,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                      color: MyColors.recent_Payment_Tile_Shadow_Color,
                      blurRadius: 7,
                      offset: Offset(-1, 2))
                ]),
            child: Scrollbar(
              interactive: true,
              thumbVisibility: true,
              thickness: 5,
              radius: Radius.circular(100),
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                              onTap: () {
                                vibrate();
                                onTap();
                                value.changeSelectedIndex(index);
                                onTapTile();
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  list[index],
                                  style: MyTextStyle.select_Options_In_Feedback(
                                      context),
                                ),
                                alignment: Alignment.centerLeft,
                              )),
                        ),
                        if (index != list.length - 1)
                          Divider(
                            thickness: 1,
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      );
    });
  }
}
