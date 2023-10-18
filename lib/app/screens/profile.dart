import 'package:flutter/material.dart';

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
              // context.goNamed(MyRoutes.contact);
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
