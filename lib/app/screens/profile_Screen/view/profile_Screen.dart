import 'package:flutter/material.dart';
import '../components/backGroud_Image.dart';
import '../components/foreground_Content copy.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          BackGroundImageProfileScreen(),
          // profile image and all content (user name, tiles etc)
          ForegroundContentProfileScreen(),
        ],
      ),
    );
  }
}
