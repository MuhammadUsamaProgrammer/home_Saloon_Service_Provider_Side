import 'package:flutter/material.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:provider/provider.dart';

import '../../../utils/theme/text_Theme_Data.dart';
import '../../screens/map/provider/map_Provider.dart';

class MapTextField extends StatelessWidget {
  const MapTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MapProvider>(builder: (context, value, child) {
      return TextField(
        autocorrect: false,
        controller: value.searchController,
        style: Theme.of(context).textTheme.bodyMedium,
        cursorColor: MyColors.primaryColor,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MyColors.primaryColor)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: 'Search places',
          hintStyle: MyTextStyle.type_Your_Message_Hint(context),
        ),
        keyboardType: TextInputType.text,
        onChanged: (text) {
          value.onChange();
        },
      );
    });
  }
}
