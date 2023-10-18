import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {},
            child: Container(
              height: 150,
              width: 300,
              child: Center(child: Text('Contact')),
            )),
      ),
    );
  }
}
