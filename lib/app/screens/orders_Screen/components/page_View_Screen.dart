import 'package:flutter/material.dart';
import 'package:home_saloon/app/screens/home_Screen/components/orders_Container.dart';
import '../../home_Screen/models/active_Orders_Model.dart';
import '../models/service_Status_Model.dart';

class PageViewScreen extends StatelessWidget {
  final int itemCount;

  final int index;
  const PageViewScreen({
    super.key,
    required this.index,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 5),
              itemCount: itemCount,
              itemBuilder: (context, listIndex) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12, left: 20),
                  child: OrdersContainer(
                    image: activeOrdersModel[0].image,
                    name: activeOrdersModel[0].name,
                    price: activeOrdersModel[0].price,
                    service_Type: activeOrdersModel[0].service_Type,
                    address: activeOrdersModel[0].address,
                    date: activeOrdersModel[0].date,
                    status: serviceStatusModel[index].status,
                    width: MediaQuery.of(context).size.width,
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
