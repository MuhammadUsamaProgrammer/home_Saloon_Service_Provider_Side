import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/routes/app_route_const.dart';
import 'package:home_saloon/app/routes/transitions.dart';
import 'package:home_saloon/app/screens/splash_Screen/splash_View.dart';

import '../screens/contacts.dart';
import '../screens/error_Page.dart';
import '../screens/homeScreen.dart';
import '../screens/profile.dart';

// class MyAppRoutes {TransitionsCustom
TransitionsCustom custom = TransitionsCustom();
GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(child: SplashScreen()),
    ),
    GoRoute(
      name: MyRoutes.home,
      path: '/home',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: Duration(milliseconds: 500),
        key: state.pageKey,
        child: Home(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;

          var tween = Tween<Offset>(begin: begin, end: end);
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
        name: MyRoutes.contact,
        path: '/contact_us',
        pageBuilder: (context, state) => custom.leftToRight(
              state,
              child: Contact(),
            )),
    GoRoute(
      name: MyRoutes.profile,
      path: '/profile',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: Duration(milliseconds: 500),
        key: state.pageKey,
        child: Profile(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;

          var tween = Tween<Offset>(begin: begin, end: end);
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    ),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(child: ErrorPage());
  },
);
// }
