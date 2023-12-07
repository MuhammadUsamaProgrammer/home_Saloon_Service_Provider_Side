import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedBox extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final Widget child;
  const FrostedBox(
      {super.key,
      required this.height,
      required this.width,
      required this.radius,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(),
            ),
            //
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(
                    // color: Colors.transparent
                    color: Colors.white.withOpacity(0.13),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.15),
                        Colors.white.withOpacity(0.05),
                      ])),
            ),
            Center(
              child: child,
            )
          ],
        ),
      ),
    );
  }
}
