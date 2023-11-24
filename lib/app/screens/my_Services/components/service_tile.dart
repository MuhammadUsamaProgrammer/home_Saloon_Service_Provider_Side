import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/vibrate/vibrate.dart';
import 'package:home_saloon/app/screens/my_Services/models/my_services_model.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';
import 'package:home_saloon/utils/theme/text_Theme_Data.dart';

class ServiceTile extends StatelessWidget {
  final MyServicesModel myServicesModel;
  final double width;
  const ServiceTile({
    super.key,
    required this.myServicesModel,
    this.width = 360,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        vibrate();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8, right: 8),
        // height: 200,
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                myServicesModel.serviceName,
                style: MyTextStyle.Tile_Price(context),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(myServicesModel.image),
                        fit: BoxFit.cover)),
              ),
              heightC(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price : Rs ' +
                            myServicesModel.price.toInt().toString(),
                        style: MyTextStyle.logout_Text(context),
                      ),
                      heightC(6),
                      Text(
                        'No. of slots :' +
                            myServicesModel.numberOfSlote.toString(),
                        style: MyTextStyle.logout_Text(context),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4.5 Rating ',
                        style: MyTextStyle.logout_Text(context),
                      ),
                      Text(
                        'on 9 services',
                        style: MyTextStyle.logout_Text(context),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
