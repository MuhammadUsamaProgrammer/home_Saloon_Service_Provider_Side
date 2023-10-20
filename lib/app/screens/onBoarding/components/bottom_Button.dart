import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/utils/routes/app_route_const.dart';
import 'package:provider/provider.dart';

import '../../../../utils/localization/keys/codegen_loader.g.dart';
import '../../../common/buttons/textButton.dart';
import '../../../common/vibrate/vibrate.dart';
import '../provider/ionBoarding_Provider.dart';

class OnBoardingScreenBottomButton extends StatelessWidget {
  const OnBoardingScreenBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnBoardingProvider>(
      builder: (context, value, child) {
        return value.isLastPage
            ? Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 18),
                child: Button1(
                  text: 'Get Started',
                  onTap: () {
                    vibrate();
                    GoRouter.of(context).goNamed(MyRoutes.shortCodeScreen);
                  },
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 18),
                child: Button1(
                  text: LocaleKeys.next_button_text.tr(),
                  onTap: () {
                    vibrate();
                    value.controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              );
      },
    );
  }
}
