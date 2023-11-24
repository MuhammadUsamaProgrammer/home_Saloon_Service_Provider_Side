import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/screens/authentication/short_Code_Screen/provider/check_Box_Provider.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:provider/provider.dart';

import '../../../../resources/images/images_Path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    final checkBoxProvider =
        Provider.of<CheckBoxProvider>(context, listen: false);

    checkBoxProvider.checkFunction();
    checkBoxProvider.firstTimeshowOnBoarding();

    Future.delayed(Duration(seconds: 3), () {
      if (checkBoxProvider.isSelected) {
        context.goNamed(MyRoutes.mainPage);
      } else {
        checkBoxProvider.showOnBoarding
            ? context.goNamed(MyRoutes.onBoardingPage)
            : context.goNamed(MyRoutes.shortCodeScreen);
        checkBoxProvider.offshowOnBoarding();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.MediaQueryHeight(),
        width: context.MediaQueryWidth(),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(MyImagesPath.onBoarding_1),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    MyColors.splashGradient1,
                    MyColors.splashGradient2,
                    MyColors.splashGradient3,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 167,
                    width: 167,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(MyImagesPath.logo_Removed_BG),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 81,
                    width: 134,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(MyImagesPath.splashText),
                            filterQuality: FilterQuality.high)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
