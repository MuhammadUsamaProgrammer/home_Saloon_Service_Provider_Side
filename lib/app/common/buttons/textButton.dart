import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoperrs/app/screens/theme/provider/theme_Provider.dart';

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
    return Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return Container(
          width: width,
          height: height,
          child: TextButton(
            onPressed: onTap,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 14, color: Colors.white, fontFamily: 'DM_Sans'),
            ),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              primary: Colors.white,
              backgroundColor:
                  value.isLightMode ? Color(0xff333333) : Colors.pink,
              // minimumSize: Size.fromHeight(54),
            ),
          ),
        );
      },
    );
  }
}
