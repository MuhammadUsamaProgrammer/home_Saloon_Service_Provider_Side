import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/widgets/buttons/textButton.dart';
import 'package:home_saloon/app/screens/feedback_Screen/components/customDropDown.dart';
import 'package:home_saloon/app/widgets/textField/feedbackTextField.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../../../localization/keys/codegen_loader.g.dart';
import '../../../widgets/coPagesAppBar/coPages_AppBar.dart';
import '../../../widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import '../provider/feedback_Provider.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: CoPagesAppBar(
        LocaleKeys.Feedback.tr(),
      ),
      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightC(57),
              // feedback options
              Consumer<FeedbackProvider>(
                builder: (context, value, child) {
                  return CustomDropDown(
                    onTapTile: (index) {
                      value.changeSelectedIndex(index);
                    },
                    list: value.dropdownMenuItem,
                    onTap: () {
                      value.toogleDropDown();
                    },
                    heading_Text: value.heading_Text,
                    isOpen: value.isDropDownOpen,
                  );
                },
              ),
              heightC(33),
              Text(
                LocaleKeys.Write_a_message.tr(),
                style: MyTextStyle.write_A_Message(context),
              ),
              heightC(10),
              Consumer<FeedbackProvider>(
                builder: (context, value, child) {
                  return FeedbackTextField(
                      controller: value.feedbackTextController);
                },
              ),
              heightC(30),
              Consumer<FeedbackProvider>(
                builder: (context, value, child) {
                  return Button1(
                      text: 'Submit',
                      onTap: () {
                        value.submit(context);
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
