import 'package:flutter/material.dart';
import 'package:home_saloon/resources/images/images_Path.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';

class LogoutDialogPopUp extends StatelessWidget {
  LogoutDialogPopUp({
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
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.amber,
                height: 50,
                width: 100,
                child: Image.asset(
                  MyImagesPath.error,
                  color: MyColors.primaryColor,
                  width: 150,
                  fit: BoxFit.fitHeight,
                ),
              ),
              // Icon(
              //   Icons.error_outline_rounded,
              //   color: MyColors.primaryColor,
              //   size: 50,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
