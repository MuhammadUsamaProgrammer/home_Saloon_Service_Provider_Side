import '../../../../resources/images/images_Path.dart';

class ActiveOrdersModel {
  final String image;
  final String name;
  final double price;
  final String service_Type;
  final String address;
  final String date;
  final String status;
  ActiveOrdersModel({
    required this.image,
    required this.name,
    required this.price,
    required this.service_Type,
    required this.address,
    required this.date,
    required this.status,
  });
}

List<ActiveOrdersModel> activeOrdersModel = [
  ActiveOrdersModel(
      image: MyImagesPath.saloon_Image,
      name: 'Aiman K',
      price: 50.00,
      service_Type: 'Pedi Cure',
      address: 'ABC Arena, Saudia Arabia, XYZ',
      date: 'Oct 17, 2022',
      status: 'In Progress'),
  ActiveOrdersModel(
      image: MyImagesPath.saloon_Image,
      name: 'Aiman K',
      price: 50.00,
      service_Type: 'Pedi Cure',
      address: 'ABC Arena, Saudia Arabia, XYZ',
      date: 'Oct 17, 2022',
      status: 'In Progress'),
  ActiveOrdersModel(
      image: MyImagesPath.saloon_Image,
      name: 'Aiman K',
      price: 50.00,
      service_Type: 'Pedi Cure',
      address: 'ABC Arena, Saudia Arabia, XYZ',
      date: 'Oct 17, 2022',
      status: 'In Progress'),
  ActiveOrdersModel(
      image: MyImagesPath.saloon_Image,
      name: 'Aiman K',
      price: 50.00,
      service_Type: 'Pedi Cure',
      address: 'ABC Arena, Saudia Arabia, XYZ',
      date: 'Oct 17, 2022',
      status: 'In Progress'),
];
