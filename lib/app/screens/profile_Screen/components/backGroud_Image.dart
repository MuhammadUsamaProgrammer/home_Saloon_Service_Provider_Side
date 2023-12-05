import 'package:flutter/material.dart';
import '../../../core/resources/images/images_Path.dart';

class BackGroundImageProfileScreen extends StatelessWidget {
  const BackGroundImageProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 370,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    MyImagesPath.onBoarding_3,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
