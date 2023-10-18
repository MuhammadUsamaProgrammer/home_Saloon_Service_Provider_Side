import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/routes/app_route_const.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.goNamed(MyRoutes.contact);
            },
            child: Container(
              height: 150,
              width: 300,
              child: Center(child: Text('Profile')),
            )),
      ),
    );
  }
}
