import 'package:flutter/material.dart';
import 'package:home_saloon/app/common/cutomize_Sizedbox/CustomsizedBox.dart';
import 'package:home_saloon/app/common/mediaQuery/dynamic_MediaQuery.dart';
import 'package:home_saloon/app/screens/home_Screen/components/app_Bar_Of_Home_Page.dart';
import 'package:home_saloon/app/screens/my_Services/components/service_tile.dart';
import 'package:home_saloon/app/screens/my_Services/provider/my_services_provider.dart';
import 'package:provider/provider.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.MediaQueryHeight(),
        width: context.MediaQueryWidth(),
        child: Column(
          children: [
            heightC(20),
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomAppBar(
                text: 'My Services',
                index: 1,
              ),
            ),
            heightC(25),

            Consumer<MyServicesProvider>(builder: (context, value, child) {
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 5),
                  itemCount: value.myServicesModel.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12, left: 20),
                      child: ServiceTile(
                        myServicesModel: value.myServicesModel[index],
                      ),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
