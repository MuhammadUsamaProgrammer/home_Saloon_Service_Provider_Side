import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 93,
            ),
            Image.asset('images/into/ImageS2.png'),
            SizedBox(
              height: 41,
            ),
            Text(
              'Best Collection with',
              style: TextStyle(
                  fontFamily: 'Playfair_Display',
                  fontSize: 32,
                  // color: Color(0xFF343434),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Luxury Leather',
              style: TextStyle(
                  fontFamily: 'Playfair_Display',
                  fontSize: 32,
                  // color: Color(0xFF343434),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 24,
            ),
            Text('Semper in cursus magna et eu varius nunc',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF999999),
                  fontFamily: 'DM_Sans',
                )),
            Text('adipiscing. Elementum justo, laoreet id sem',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF999999),
                  fontFamily: 'DM_Sans',
                )),
            Text(' semper parturient.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF999999),
                  fontFamily: 'DM_Sans',
                )),
          ],
        ),
      ),
    );
  }
}
