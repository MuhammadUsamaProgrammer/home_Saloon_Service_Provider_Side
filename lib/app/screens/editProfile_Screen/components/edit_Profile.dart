import 'package:flutter/material.dart';
import 'package:home_saloon/app/widgets/vibrate/vibrate.dart';
import 'package:provider/provider.dart';

import '../../../core/resources/images/images_Path.dart';
import '../../../core/theme/colors_theme_data.dart';
import '../provider/imageProvider.dart';
import 'camera_Gallery_Popup.dart';
import 'new_profile_Image.dart';

class EditProfileImage extends StatelessWidget {
  const EditProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PickImageProvider>(
      builder: (context, value, child) {
        return Stack(
          children: [
            // profile pic
            Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                border: Border.all(color: MyColors.backgroundColor, width: 4),
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage(MyImagesPath.profile_Image),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: MyColors.edit_Profile_Profile_Shadow,
                    blurRadius: 13,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              // new profile pic
              child: NewProfileImage(),
            ),
            // edit profile pic button
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  vibrate();
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CameraGalleryImagePopUP();
                      });
                },
                child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: MyColors.backgroundColor,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.edit_Profile_Profile_Shadow,
                          blurRadius: 13,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    // camera icon image
                    child: Image.asset(
                      MyImagesPath.camera_Icon,
                      width: 24,
                      height: 24,
                    )),
              ),
            ),
          ],
        );
      },
    );
  }
}
