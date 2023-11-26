import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import '../../../../utils/Theme/colors_theme_data.dart';
import '../../../../utils/Theme/text_Theme_Data.dart';

class CustomDropDown extends StatelessWidget {
  final bool isOpen;
  final VoidCallback onTap;
  final String heading_Text;
  final List list;
  final void Function(int) onTapTile;
  const CustomDropDown({
    super.key,
    required this.onTapTile,
    required this.list,
    required this.onTap,
    required this.heading_Text,
    required this.isOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // this tap is to open and close dropdown
        GestureDetector(
          onTap: () {
            vibrate();
            onTap();
          },
          // this is tile of dropdown, (text and dropdown icon)
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
                    heading_Text,
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
        // this is gap between tile and option list
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: isOpen ? 10 : 0,
        ),
        // this is list of options
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
            // list of options
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: list.length,
              itemBuilder: (context, index) {
                // list options tile
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
                              onTapTile(index);
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
  }
}
