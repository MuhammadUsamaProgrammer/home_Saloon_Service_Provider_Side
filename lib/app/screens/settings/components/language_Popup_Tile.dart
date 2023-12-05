import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';

import '../../../widgets/vibrate/vibrate.dart';

class LanguagePopupTile extends StatelessWidget {
  final String languageCode;
  final String text;
  const LanguagePopupTile(
      {super.key, required this.languageCode, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 220,
      child: InkWell(
        onTap: () async {
          await context.setLocale(Locale(languageCode));
          vibrate();
          Navigator.pop(context);
        },
        borderRadius: BorderRadius.circular(5),
        child: Center(
          child: Text(
            text,
            style: MyTextStyle.current_Language_Dialog_Text(context),
          ),
        ),
      ),
    );
  }
}
