import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';

class DetailNotification extends StatelessWidget {
  const DetailNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.MediaQueryHeight(),
        width: context.MediaQueryHeight(),
      ),
    );
  }
}
