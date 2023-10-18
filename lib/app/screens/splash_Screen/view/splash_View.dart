import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/utils/images/images_Path.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      context.goNamed(MyRoutes.onBoardingPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImagesPath.onBoarding_1),
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
                            image: AssetImage(ImagesPath.logo),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 81,
                    width: 134,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImagesPath.splashText),
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
