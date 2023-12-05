import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/core/cache/set_shared_pref.dart';
import 'package:home_saloon/app/widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/widgets/vibrate/vibrate.dart';
import 'package:home_saloon/app/screens/main_Page/provider/main_Page_Provider.dart';
import 'package:home_saloon/app/core/resources/images/images_Path.dart';
import 'package:home_saloon/app/core/routes/app_route_const.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';

class DeleteAccountDialogPopUp extends StatelessWidget with SharedPrefSet {
  DeleteAccountDialogPopUp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // this container is main popup container
      child: Container(
        height: 197,
        // this stack is for yes button to elivate
        child: Stack(
          children: [
            // this is the all content except yes button
            Center(
              child: Container(
                // this width just handel inner content width
                width: 245,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    heightC(14),
                    // error icon image
                    Image.asset(
                      MyImagesPath.delete,
                      color: MyColors.primaryColor,
                      width: 60,
                      fit: BoxFit.fitHeight,
                    ),
                    heightC(10),
                    // heading text
                    Text(
                      'Delete Account!',
                      style: MyTextStyle.resend_OTP_Active(context),
                    ),
                    heightC(5),
                    // this padding is for breaf text of alert message
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      // this is alert message
                      child: Container(
                        height: 32,
                        width: 220,
                        child: Text(
                          'This action cannot be undo. Are you sure you want to delete ?',
                          style: MyTextStyle.logout_Text(context),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    heightC(13),
                  ],
                ),
              ),
            ),
            // this is 'yes' button
            Center(
              child: Container(
                alignment: Alignment(1, 0.85),
                height: 240,
                width: 290,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // cancel button
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          vibrate();
                          Navigator.pop(context);
                        },
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 30,
                          width: 60,
                          child: Center(
                            child: Text(
                              'Cancel',
                              style: MyTextStyle.logout_Text(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // delete button
                    Consumer<MainPageProvider>(
                        builder: (context, value, child) {
                      return GestureDetector(
                        onTap: () async {
                          await setToken(token: '');
                          await setStayLogin(value: false);
                          vibrate();
                          value.changePage(0);
                          Navigator.pop(context);
                          GoRouter.of(context)
                              .pushReplacementNamed(MyRoutes.shortCodeScreen);
                        },
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 254, 125, 147),
                                Color.fromARGB(255, 250, 80, 109),
                                Color.fromARGB(255, 252, 74, 103),
                                Color.fromARGB(255, 249, 67, 98),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            // color: MyColors.primaryColor,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(236, 247, 76, 105),
                                  blurRadius: 5,
                                  offset: Offset(1, 1))
                            ],
                          ),

                          // Delete text
                          child: Center(
                            child: Text(
                              'Delete',
                              style: MyTextStyle.popup_Button_Yes(context),
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
