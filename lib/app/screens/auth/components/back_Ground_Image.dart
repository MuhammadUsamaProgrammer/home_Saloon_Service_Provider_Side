import 'package:flutter/material.dart';

import '../../../core/resources/images/images_Path.dart';
import '../../../core/theme/colors_theme_data.dart';

class BackGroundImageOTPScreen extends StatelessWidget {
  const BackGroundImageOTPScreen({super.key});

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
                    MyImagesPath.oTP_Image,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Container(
              color: MyColors.auth_Image_Color,
            ),
          ),
        ],
      ),
    );
  }
}
