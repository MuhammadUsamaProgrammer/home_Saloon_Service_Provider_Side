import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../utils/localization/keys/codegen_loader.g.dart';
import '../../../common/coPagesAppBar/coPages_AppBar.dart';
import '../../../common/cutomize_Sizedbox/CustomsizedBox.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    String? dropDownValue = '1';
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                // app bar
                CoPagesAppBar(
                  heading: LocaleKeys.Feedback.tr(),
                ),
                heightC(57),
                DropdownButton<String>(
                  value: dropDownValue,
                  icon: Icon(Icons.menu),
                  style: TextStyle(),
                  items: [
                    DropdownMenuItem<String>(
                      value: '1',
                      child: Text('one'),
                    ),
                    DropdownMenuItem<String>(
                      value: '2',
                      child: Text('two'),
                    ),
                    DropdownMenuItem<String>(
                      value: '3',
                      child: Text('three'),
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDownValue = newValue!;
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
