// import 'dart:async';

// import 'package:flutter/widgets.dart';

// class BounceState with ChangeNotifier {
//   final double maxHeight = 300.0; // The maximum height for bouncing
//   double _position = 0.0;

//   double get position => _position;

//   void startBounce() {
//     _position = 0.0; // Reset the position
//     notifyListeners();

//     // Simulate the bounce animation using a timer (adjust duration and velocity as needed)
//     const bounceDuration = Duration(milliseconds: 300);
//     const bounceVelocity = 200.0;

//     Timer.periodic(bounceDuration, (timer) {
//       _position += bounceVelocity * bounceDuration.inMilliseconds / 1000;
//       if (_position >= maxHeight) {
//         timer.cancel();
//         _position = maxHeight; // Ensure it doesn't go beyond maxHeight
//       }
//       notifyListeners();
//     });
//   }
// }



// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final bounceState = Provider.of<BounceState>(context);

//     return GestureDetector(
//       onTap: () {
//         bounceState.startBounce();
//       },
//       child: AnimatedBuilder(
//         animation: bounceState,
//         builder: (context, child) {
//           return Container(
//             width: 50.0,
//             height: 50.0,
//             color: Colors.blue,
//             margin: EdgeInsets.only(top: bounceState.position),
//           );
//         },
//       ),
//     );
//   }
// }
