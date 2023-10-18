import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  const Button1({
    super.key,
    required this.text,
    required this.onTap,
    this.width = double.infinity,
    this.height = 54,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: () {
          print("sds");
          onTap();
        },
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14, color: Colors.white, fontFamily: 'DM_Sans'),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          // primary: Colors.white,
          backgroundColor: Colors.pink,
          // minimumSize: Size.fromHeight(54),
        ),
      ),
    );
  }
}
