import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/screens/main_Page/view/main_Page_View.dart';
import 'package:home_saloon/app/screens/onBoarding/view/onBoarding_page.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:home_saloon/utils/routes/transitions.dart';
import '../../app/screens/authentication/oTP_Screen/View/oTP_Screen.dart';
import '../../app/screens/authentication/short_Code_Screen/View/short_Code_Screen.dart';
import '../../app/screens/test_Screens/error_Page.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(child: MainPage()),
    ),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.onBoardingPage, screen: OnBoardingPage()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.shortCodeScreen, screen: ShortCodeScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.oTPScreen, screen: OTPScreen()),
    // transitionsleftToRightPage(myRoutes: MyRoutes.mainPage, screen: MainPage()),
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
