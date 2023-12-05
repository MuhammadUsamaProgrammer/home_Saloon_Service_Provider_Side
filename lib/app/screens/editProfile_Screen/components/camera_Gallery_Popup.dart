import 'package:flutter/material.dart';
import 'package:home_saloon/app/widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/widgets/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../widgets/vibrate/vibrate.dart';
import '../provider/imageProvider.dart';

class CameraGalleryImagePopUP extends StatelessWidget {
  const CameraGalleryImagePopUP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<PickImageProvider>(
      builder: (context, value, child) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 200,
            width: context.MediaQueryWidth(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CameraGalleryPopTile(
                  onTap: () async {
                    final ImagePicker picker = ImagePicker();
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      value.newImagePath(image.path);
                    }
                    Navigator.pop(context);
                  },
                  icon: Icons.image,
                  text: "Pick from gallery",
                ),
                CameraGalleryPopTile(
                    onTap: () async {
                      final ImagePicker picker = ImagePicker();
                      final XFile? image =
                          await picker.pickImage(source: ImageSource.camera);
                      if (image != null) {
                        value.newImagePath(image.path);
                      }
                      Navigator.pop(context);
                    },
                    icon: Icons.camera,
                    text: "Capture by Camera"),
                CameraGalleryPopTile(
                    onTap: () {
                      value.removeImage();
                      Navigator.pop(context);
                    },
                    color: Colors.red,
                    icon: Icons.cancel_rounded,
                    text: "Remove"),
              ],
            ),
          ),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class CameraGalleryPopTile extends StatelessWidget {
  final IconData icon;
  final String text;
  VoidCallback onTap;
  final Color color;
  CameraGalleryPopTile(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.text,
      this.color = MyColors.edit_Profile_Popup_Icon_Color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: InkWell(
        onTap: () {
          vibrate();
          onTap();
        },
        borderRadius: BorderRadius.circular(5),
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 30,
                color: color,
              ),
              widthW(12),
              Text(
                text,
                style: MyTextStyle.current_Language_Dialog_Text(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
