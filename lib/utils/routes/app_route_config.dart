import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/screens/onBoarding/view/onBoarding_page.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:home_saloon/utils/routes/transitions.dart';
import 'package:home_saloon/app/screens/splash_Screen/view/splash_View.dart';
import '../../app/screens/error_Page.dart';
import '../../app/screens/homeScreen.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(child: SplashScreen()),
    ),
    transitionsleftToRightPage(myRoutes: MyRoutes.home, screen: Home()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.onBoardingPage, screen: OnBoardingPage()),
    // transitionsleftToRightPage(myRoutes: MyRoutes.profile, screen: Profile()),
    // transitionsleftToRightPage(myRoutes: MyRoutes.profile, screen: Profile()),
    // transitionsleftToRightPage(myRoutes: MyRoutes.profile, screen: Profile()),
    // transitionsleftToRightPage(myRoutes: MyRoutes.profile, screen: Profile()),
    // transitionsleftToRightPage(myRoutes: MyRoutes.profile, screen: Profile()),
    // transitionsleftToRightPage(myRoutes: MyRoutes.profile, screen: Profile()),
    // transitionsleftToRightPage(myRoutes: MyRoutes.profile, screen: Profile()),
    // transitionsleftToRightPage(myRoutes: MyRoutes.profile, screen: Profile()),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(child: ErrorPage());
  },
);
