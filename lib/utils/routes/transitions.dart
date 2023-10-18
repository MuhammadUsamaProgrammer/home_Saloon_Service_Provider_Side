import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// class TransitionsCustom {
GoRoute transitionsleftToRightPage(
    {int timerInMilliseconds = 500,
    required String myRoutes,
    required Widget screen}) {
  return GoRoute(
    name: myRoutes,
    path: '/' + myRoutes,
    pageBuilder: (context, state) => CustomTransitionPage(
      transitionDuration: Duration(milliseconds: timerInMilliseconds),
      key: state.pageKey,
      child: screen,
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
  );
}

GoRoute transitionsdownToUpPage(
    {int timerInMilliseconds = 500,
    required String myRoutes,
    required Widget screen}) {
  return GoRoute(
      name: myRoutes,
      path: '/' + myRoutes,
      pageBuilder: (context, state) => CustomTransitionPage(
            transitionDuration: Duration(milliseconds: timerInMilliseconds),
            key: state.pageKey,
            child: screen,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;

              var tween = Tween<Offset>(begin: begin, end: end);
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ));
}
// }
