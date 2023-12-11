import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/core/cache/set_shared_pref.dart';
import 'package:home_saloon/app/core/routes/app_route_const.dart';
import 'package:provider/provider.dart';
import '../../../localization/keys/codegen_loader.g.dart';
import '../../../widgets/buttons/textButton.dart';
import '../provider/onBoarding_Provider.dart';

class OnBoardingScreenBottomButton extends StatelessWidget with SharedPrefSet {
  const OnBoardingScreenBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnBoardingProvider>(
      builder: (context, value, child) {
        return value.isLastPage
            // get started button
            ? Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 18),
                child: Button1(
                  text: 'Get Started',
                  onTap: () async {
                    await setShowOnboarding(value: false);
                    value.dispose();
                    GoRouter.of(context).pushNamed(MyRoutes.shortCodeScreen);
                  },
                ),
              )
            // next page button
            : Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 18),
                child: Button1(
                  text: LocaleKeys.next_button_text.tr(),
                  onTap: () {
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
