import 'package:flutter/material.dart';
import 'package:home_saloon/app/widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/screens/settings/components/language_Popup_Tile.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';

class LanguageDialogPopUp extends StatelessWidget {
  LanguageDialogPopUp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 270,
        width: 324,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightC(20),
              Text(
                'Select Language',
                style: MyTextStyle.setting_Page_Tile_Text(context),
              ),
              heightC(20),
              Divider(
                color: MyColors.language,
                thickness: 0.5,
                height: 1,
              ),
              heightC(10),
              // english Language button
              LanguagePopupTile(languageCode: 'en', text: 'English'),
              heightC(10),
              // اردو Language button
              LanguagePopupTile(languageCode: 'ur', text: 'اردو'),
              heightC(10),
              // العربية Language button
              LanguagePopupTile(languageCode: 'ar', text: 'العربية'),
            ],
          ),
        ),
      ),
    );
  }
}
