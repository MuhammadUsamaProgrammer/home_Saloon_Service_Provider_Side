import 'package:flutter/material.dart';

import '../../../core/resources/images/images_Path.dart';
import '../../../core/theme/colors_theme_data.dart';

class ShortCodeBackGroundImage extends StatelessWidget {
  const ShortCodeBackGroundImage({super.key});

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
                    MyImagesPath.short_Code_Image,
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
