import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {},
            child: Container(
              height: 150,
              width: 300,
              child: Center(child: Text('Error')),
            )),
      ),
    );
  }
}
