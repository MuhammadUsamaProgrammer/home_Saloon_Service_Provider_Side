import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/screens/myWallet/components/recent_Payments_List.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';
import '../../../../localization/keys/codegen_loader.g.dart';
import '../../../common/coPagesAppBar/coPages_AppBar.dart';
import '../components/current_Balance_Container.dart';
import '../provider/heightControlProvider.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: CoPagesAppBar(
        LocaleKeys.My_Wallet.tr(),
      ),
      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightC(46),
              // current balance detail container
              CurrentBalanceContainer(),
              // this is height between payment container and recent transaction
              Consumer<HeightControlProvider>(
                builder: (context, value, child) {
                  if (context.MediaQueryHeight() * 0.6 -
                          (value.containerHeight + value.sizedBoxHeight) *
                              value.items.toDouble() >
                      0) {
                    return heightC(context.MediaQueryHeight() * 0.6 -
                        (value.containerHeight + value.sizedBoxHeight) *
                            value.items.toDouble());
                  } else
                    return heightC(10);
                },
              ),
              heightC(30),
              // this is recent paymets heading
              Text(
                LocaleKeys.Recent_Payments.tr(),
                style: MyTextStyle.recent_Payments_Heading(context),
              ),
              heightC(27),
              // this is the list of all recent payment withdraws
              RecentTransactionList(),
            ],
          ),
        ),
      ),
    );
  }
}
