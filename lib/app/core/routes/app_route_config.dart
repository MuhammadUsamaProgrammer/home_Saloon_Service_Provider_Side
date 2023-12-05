// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/screens/main_Page/view/main_Page_View.dart';
import 'package:home_saloon/app/screens/onBoarding/view/onBoarding_page.dart';
import 'package:home_saloon/app/screens/splash_Screen/view/splash_View.dart';
import 'package:home_saloon/app/screens/test_Screens/bottomSheet/view/contacts.dart';
import 'package:home_saloon/app/core/routes/app_route_const.dart';
import 'package:home_saloon/app/core/routes/transitions.dart';
import '../../screens/auth/View/oTP_Screen.dart';
import '../../screens/auth/View/short_Code_Screen.dart';
import '../../screens/editProfile_Screen/view/edit_Profile_Screen.dart';
import '../../screens/feedback_Screen/view/feedback_Screen.dart';
import '../../screens/map/view/google_Map.dart';
import '../../screens/map/view/search_Places_GoogleMap.dart';
import '../../screens/myWallet/view/walletScreen.dart';
import '../../screens/notifications_Screen/view/notifications_Screen.dart';
import '../../screens/searchScreen/search_Screen.dart';
import '../../screens/settings/view/about_Terms_Contactus_Screens/aboutUs_screen.dart';
import '../../screens/settings/view/about_Terms_Contactus_Screens/contact_Us.dart';
import '../../screens/settings/view/about_Terms_Contactus_Screens/terms_And_Policies.dart';
import '../../screens/settings/view/setting_Screen.dart';
import '../../screens/calander_Test/view/homeScreen.dart';
import '../../screens/test_Screens/error_Page.dart';
import '../../screens/test_Screens/profile.dart';

GoRouter router = GoRouter(
  routes: [
    // GoRoute(
    //   path: '/',
    //   pageBuilder: (context, state) => MaterialPage(child: Home()),
    // ),
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(child: SplashScreen()),
    ),
    transitionsleftToRightPage(myRoutes: MyRoutes.mainPage, screen: MainPage()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.onBoardingPage, screen: OnBoardingPage()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.shortCodeScreen, screen: ShortCodeScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.oTPScreen, screen: OTPScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.settingScreen, screen: SettingScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.myWalletScreen, screen: MyWalletScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.feedbackScreen, screen: FeedbackScreen()),
    transitionsleftToRightPage(myRoutes: MyRoutes.aboutUs, screen: AboutUs()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.termsAndPolicies, screen: TermsAndPolicies()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.contactUs, screen: ContactUs()),
    transitionsdownToUpPage(
        myRoutes: MyRoutes.notificationsScreen, screen: NotificationsScreen()),
    transitionsdownToUpPage(
        myRoutes: MyRoutes.searchScreen, screen: SearchScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.editProfileScreen, screen: EditProfileScreen()),
    transitionsleftToRightPage(
        myRoutes: MyRoutes.mapScreen, screen: MapScreen()),
    transitionsdownToUpPage(
        myRoutes: MyRoutes.searchPlaces, screen: SearchPlaces()),
    // transitionsleftToRightPage(
    //     myRoutes: MyRoutes.detailNotification, screen: DetailNotification()),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(child: ErrorPage());
  },
);
