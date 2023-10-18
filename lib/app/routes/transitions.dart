import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransitionsCustom {
  CustomTransitionPage<dynamic> leftToRight(
    GoRouterState state, {
    required Widget child,
  }) {
    return CustomTransitionPage(
      transitionDuration: Duration(milliseconds: 500),
      key: state.pageKey,
      child: child,
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
    );
  }

  CustomTransitionPage<dynamic> downToUp(
    GoRouterState state, {
    required Widget child,
  }) {
    return CustomTransitionPage(
      transitionDuration: Duration(seconds: 1),
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0); // Start offscreen below
        const end = Offset.zero; // End at the original position

        var tween = Tween<Offset>(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
