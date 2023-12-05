import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/widgets/buttons/textButton.dart';
import 'package:home_saloon/app/widgets/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/widgets/textField/edit_Profile_TextField.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:provider/provider.dart';
import '../../../localization/keys/codegen_loader.g.dart';
import '../../../core/theme/text_Theme_Data.dart';
import '../../../widgets/coPagesAppBar/coPages_AppBar.dart';
import '../../../widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import '../components/edit_Profile.dart';
import '../provider/edit_Profile_Details_Provider.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: CoPagesAppBar(
        LocaleKeys.Edit_Profile.tr(),
      ),
      // body
      body: Container(
        height: context.MediaQueryHeight(),
        width: context.MediaQueryWidth(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // edit profile pic
              EditProfileImage(),
              heightC(24),
              // name of user
              Consumer<EditProfileDetailsProvider>(
                builder: (context, value, child) {
                  return Text(
                    '${value.firstName} ${value.lastName}',
                    style: MyTextStyle.profile_Name(context),
                  );
                },
              ),
              heightC(66),
              // firstName textField
              Consumer<EditProfileDetailsProvider>(
                builder: (context, value, child) {
                  return EditProfileTextField(
                      controller: value.firstNameController,
                      hintText: value.firstName);
                },
              ),
              // FIRST DIVIDER
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Divider(
                  thickness: 2,
                  color: MyColors.text_field_color_Secondary,
                ),
              ),
              // secondName textField
              Consumer<EditProfileDetailsProvider>(
                builder: (context, value, child) {
                  return EditProfileTextField(
                      controller: value.lastNameController,
                      hintText: value.lastName);
                },
              ),
              heightC(40),
              // email textField
              Consumer<EditProfileDetailsProvider>(
                builder: (context, value, child) {
                  return EditProfileTextField(
                      textCapitalization: TextCapitalization.none,
                      textInputType: TextInputType.emailAddress,
                      controller: value.emailController,
                      hintText: value.email);
                },
              ),
              // SECOND DIVIDER
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Divider(
                  thickness: 2,
                  color: MyColors.text_field_color_Secondary,
                ),
              ),
              // phNumber textField
              Consumer<EditProfileDetailsProvider>(
                builder: (context, value, child) {
                  return EditProfileTextField(
                      textCapitalization: TextCapitalization.none,
                      textInputType: TextInputType.phone,
                      controller: value.phNumberController,
                      hintText: value.phNumber);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 20),
        child: Consumer<EditProfileDetailsProvider>(
          builder: (context, value, child) {
            return Button1(
                text: LocaleKeys.Update_Profile.tr(),
                onTap: () {
                  value.onSave();
                });
          },
        ),
      ),
    );
  }
}
