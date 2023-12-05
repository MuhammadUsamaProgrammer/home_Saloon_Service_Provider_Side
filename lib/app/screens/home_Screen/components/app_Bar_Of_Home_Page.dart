import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/widgets/vibrate/vibrate.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../../../core/resources/images/images_Path.dart';
import '../../../core/routes/app_route_const.dart';
import '../../../core/theme/colors_theme_data.dart';
import '../../editProfile_Screen/components/new_profile_Image.dart';
import '../../editProfile_Screen/provider/edit_Profile_Details_Provider.dart';
import 'notification_Button.dart';

class CustomAppBar extends StatelessWidget {
  final int index;
  final String text;
  CustomAppBar({
    super.key,
    this.index = 0,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            index == 0
                //   goodmorning and name
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: MyTextStyle.good_Morning(context),
                      ),
                      // name of user
                      Consumer<EditProfileDetailsProvider>(
                        builder: (context, value, child) {
                          return Text(
                            '${value.firstName}!',
                            style: MyTextStyle.name(context),
                          );
                        },
                      ),
                    ],
                  )
                //   Manage_Orders
                : Text(
                    text,
                    style: MyTextStyle.manage_Orders(context),
                  ),
            // notification & profile pic
            Row(
              children: [
                // notification button
                NotificationButton(),
                widthW(11),
                // profile image
                GestureDetector(
                  onTap: () {
                    vibrate();
                    GoRouter.of(context).pushNamed(MyRoutes.editProfileScreen);
                  },
                  child: Container(
                    height: 37,
                    width: 37,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.appBar_Items_Shadow_Color,
                            blurRadius: 1,
                          ),
                        ],
                        image: DecorationImage(
                            image: NetworkImage(MyImagesPath.profile_Image),
                            fit: BoxFit.cover)),
                    child: NewProfileImage(),
                  ),
                )
              ],
            )
          ]),
        ],
      ),
    );
  }
}
