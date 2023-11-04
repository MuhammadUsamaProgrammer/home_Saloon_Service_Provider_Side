import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/orders_Screen/components/page_View_Headings_Tile_Of_Manage_Orders.dart';
import 'package:provider/provider.dart';
import '../../../common/cutomize_Sizedbox/CustomsizedBox.dart';
import '../../home_Screen/components/app_Bar_Of_Home_Page.dart';
import '../components/page_View_Screen.dart';
import '../provider/order_Screen_Provider.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heightC(20),
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomAppBar(
              index: 1,
            ),
          ),
          heightC(25),
          // this is heddings of all status of orders
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widthW(20),
                PageViewHeadingTileOfManageOrders(index: 0),
                widthW(
                  MediaQuery.of(context).size.width / 40,
                ),
                PageViewHeadingTileOfManageOrders(index: 1),
                widthW(
                  MediaQuery.of(context).size.width / 40,
                ),
                PageViewHeadingTileOfManageOrders(index: 2),
                widthW(
                  MediaQuery.of(context).size.width / 40,
                ),
                PageViewHeadingTileOfManageOrders(index: 3),
              ],
            ),
          ),
          heightC(10),
          // this is page view of all orders sepratly
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Consumer<OrderScreenProvider>(
              builder: (context, value, child) {
                return Container(
                  height: MediaQuery.of(context).size.height - 234,
                  child: PageView(
                    controller: value.controller,
                    onPageChanged: value.setPage,
                    children: [
                      PageViewScreen(
                        index: 0,
                        itemCount: 4,
                      ),
                      PageViewScreen(
                        index: 1,
                        itemCount: 3,
                      ),
                      PageViewScreen(
                        index: 2,
                        itemCount: 1,
                      ),
                      PageViewScreen(
                        index: 3,
                        itemCount: 4,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
