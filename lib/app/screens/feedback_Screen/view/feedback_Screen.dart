import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/feedback_Screen/components/feedBack_Options.dart';
import 'package:home_saloon/app/common/textField/feedbackTextField.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../../../../utils/localization/keys/codegen_loader.g.dart';
import '../../../common/coPagesAppBar/coPages_AppBar.dart';
import '../../../common/cutomize_Sizedbox/CustomsizedBox.dart';
import '../provider/feedbackTextControllerProvider.dart';

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
              FeedbackOptions(),
              heightC(33),
              Text(
                LocaleKeys.Write_a_message.tr(),
                style: MyTextStyle.write_A_Message(context),
              ),
              heightC(10),
              Consumer<FeedbackTextControllerProvider>(
                builder: (context, value, child) {
                  return FeedbackTextField(
                      controller: value.feedbackTextController);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
