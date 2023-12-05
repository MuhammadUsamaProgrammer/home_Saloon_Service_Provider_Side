import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_saloon/app/widgets/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/widgets/vibrate/vibrate.dart';
import 'package:home_saloon/app/screens/map/provider/map_Provider.dart';
import 'package:home_saloon/app/core/routes/app_route_const.dart';
import 'package:home_saloon/app/core/theme/colors_theme_data.dart';
import 'package:home_saloon/app/core/theme/text_Theme_Data.dart';
import 'package:provider/provider.dart';

class OrdersContainer extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final String service_Type;
  final String address;
  final String date;
  final String status;
  final double width;
  const OrdersContainer({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.service_Type,
    required this.address,
    required this.date,
    required this.status,
    this.width = 360,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MapProvider>(builder: (context, value, child) {
      return InkWell(
        onTap: () {
          vibrate();
          GoRouter.of(context).pushNamed(MyRoutes.mapScreen);
          value.initializeTheme(context);
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 8, right: 8),
          height: 172,
          width: width,
          // whole tile decoration
          decoration: BoxDecoration(
            color: MyColors.backgroundColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: MyColors.container_Shadow_Color,
                blurRadius: 5,
                offset: Offset(3, 3),
              ),
            ],
          ),
          // padding for whole content
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image and details row
                Row(
                  children: [
                    // saloon image
                    Container(
                      height: 68,
                      width: 91,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage(image), fit: BoxFit.cover)),
                    ),
                    widthW(14),
                    Container(
                      height: 68,
                      // details column
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          heightC(0),
                          Text(
                            'PKR ' + price.toString(),
                            style: MyTextStyle.Tile_Price(context),
                          ),
                          Text(
                            service_Type,
                            style: MyTextStyle.Tile_Text_content(context),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.send,
                                color: MyColors.primaryColor,
                                size: 20,
                              ),
                              // SvgPicture.asset(MySvgPath.plane_Icon),
                              Container(
                                width: MediaQuery.of(context).size.width / 2.4,
                                child: Text(
                                  address,
                                  style: MyTextStyle.Tile_Text_content(context),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                // customer name
                Text(
                  name,
                  style: MyTextStyle.customer_Name__In_Tile(context),
                ),
                // date and order status row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // date
                    Text(
                      date,
                      style: MyTextStyle.order_Date(context),
                    ),
                    Container(
                      height: 30,
                      width: 89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: status == 'Active'
                            ? MyColors.order_Status_active_Container_Color
                            : MyColors.order_Status_Container_Color,
                      ),
                      // order status
                      child: Center(
                        child: Text(
                          status,
                          style: status == 'Active'
                              ? MyTextStyle.order_Status_active(context)
                              : MyTextStyle.order_Status(context),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
