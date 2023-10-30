import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/buttons/textButton.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import '../../../../utils/theme/text_Theme_Data.dart';

class DialogPopUp extends StatelessWidget {
  final String message;
  final String okText;
  DialogPopUp({
    super.key,
    required this.message,
    required this.okText,
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: context.MediaQueryHeight() / 2.5,
        width: 324,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              heightC(20),
              Text(
                'Select Language',
                style: MyTextStyle.setting_Page_Tile_Text(context),
              ),
              heightC(30),
              // english Language button
              Container(
                height: 50,
                width: 150,
                child: InkWell(
                  onTap: () async {
                    await context.setLocale(Locale('en'));
                    vibrate();
                  },
                  borderRadius: BorderRadius.circular(5),
                  child: Center(
                    child: Text(
                      'English',
                      style: MyTextStyle.current_Language_Dialog_Text(context),
                    ),
                  ),
                ),
              ),
              heightC(10),
              // اردو Language button
              Container(
                height: 50,
                width: 150,
                child: InkWell(
                  onTap: () async {
                    await context.setLocale(Locale('ur'));
                    vibrate();
                  },
                  borderRadius: BorderRadius.circular(5),
                  child: Center(
                    child: Text(
                      'اردو',
                      style: MyTextStyle.current_Language_Dialog_Text(context),
                    ),
                  ),
                ),
              ),
              heightC(10),
              // العربية Language button
              Container(
                height: 50,
                width: 150,
                child: InkWell(
                  onTap: () async {
                    await context.setLocale(Locale('ar'));
                    vibrate();
                  },
                  borderRadius: BorderRadius.circular(5),
                  child: Center(
                    child: Text(
                      'العربية',
                      style: MyTextStyle.current_Language_Dialog_Text(context),
                    ),
                  ),
                ),
              ),
              heightC(20),
              // Ok Language button
              Button1(
                  width: 150,
                  text: 'Ok',
                  onTap: () {
                    Navigator.pop(context);
                  }),
              heightC(20),
            ],
          ),
        ),
      ),
    );
  }
}
