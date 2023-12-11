import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/core/cache/get_shared_pref.dart';
import 'package:home_saloon/app/core/cache/set_shared_pref.dart';
import 'package:home_saloon/app/screens/editProfile_Screen/provider/edit_Profile_Details_Provider.dart';
import 'package:home_saloon/app/widgets/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/core/routes/app_route_const.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:provider/provider.dart';
import '../../../core/resources/images/images_Path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SharedPrefGet, SharedPrefSet {
  @override
  void initState() {
    super.initState();
    final profile =
        Provider.of<EditProfileDetailsProvider>(context, listen: false);

    Future.delayed(Duration(seconds: 1), () async {
      bool showOnboarding = await getShowOnboarding();
      await getStayLogin() == false ? await setClearData() : null;
      if (showOnboarding == false) {
        if (await getToken() != '') {
          await profile.initProfile();
          print(await getToken());
          context.goNamed(MyRoutes.mainPage);
        } else {
          context.goNamed(MyRoutes.shortCodeScreen);
        }
      } else {
        context.goNamed(MyRoutes.onBoardingPage);
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
