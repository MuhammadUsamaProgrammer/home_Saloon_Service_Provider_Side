import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/screens/myWallet/components/recent_Payments_List.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import '../../../../utils/localization/keys/codegen_loader.g.dart';
import '../../../common/coPagesAppBar/coPages_AppBar.dart';
import '../components/current_Balance_Container.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app bar
                CoPagesAppBar(
                  heading: LocaleKeys.My_Wallet.tr(),
                  padding: 0,
                ),
                heightC(46),
                // current balance detail container
                CurrentBalanceContainer(),
                // this is height between payment container and recent transaction
                heightC(context.MediaQueryHeight() * 0.33),
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
      ),
    );
  }
}
