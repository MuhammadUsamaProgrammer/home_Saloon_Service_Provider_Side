import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/screens/home_Screen/components/orders_Container.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';
import '../components/app_Bar_Of_Home_Page.dart';
import '../components/circular_Percent_Indicator/percent_Indicators_Tile.dart';
import '../components/earning_Status.dart';
import '../components/search_And_Filter.dart';
import '../components/see_All_Row.dart';
import '../models/active_Orders_Model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // app bar of home
                  CustomAppBar(),
                  heightC(34),
                  SearchAndFilter(),
                  heightC(23),
                  // Your_Stats_are_Good_Keep_it_up text
                  Text(
                    LocaleKeys.Your_Stats_are_Good_Keep_it_up.tr(),
                    style: MyTextStyle.status_Headings(context),
                  ),
                ],
              ),
            ),
            heightC(10),
            // service provider business status
            CircleIndicators(),
            heightC(35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.Earning_Status.tr(),
                    style: MyTextStyle.status_Headings(context),
                  ),
                  heightC(10),
                  // service provider earning status
                  EarningStatus(),
                  heightC(14),
                  // active orders see all row
                  SeeAllRow(),
                  heightC(7),
                ],
              ),
            ),
            // active orders list
            Container(
              height: 172,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: activeOrdersModel.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: index == 0
                        ? EdgeInsets.only(left: 25.0)
                        : EdgeInsets.only(left: 12.0),
                    child: OrdersContainer(
                        image: activeOrdersModel[index].image,
                        name: activeOrdersModel[index].name,
                        price: activeOrdersModel[index].price,
                        service_Type: activeOrdersModel[index].service_Type,
                        address: activeOrdersModel[index].address,
                        date: activeOrdersModel[index].date,
                        status: activeOrdersModel[index].status),
                  );
                },
              ),
            ),
            heightC(15)
          ],
        ),
      ),
    );
  }
}
