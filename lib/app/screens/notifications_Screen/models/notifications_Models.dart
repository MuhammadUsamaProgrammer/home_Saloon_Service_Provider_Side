import 'package:home_saloon/app/core/resources/images/images_Path.dart';

class NotificationsModel {
  final String image;
  final String heading;
  final String text;
  final String time;
  bool opened;
  NotificationsModel({
    required this.image,
    required this.heading,
    required this.text,
    required this.time,
    required this.opened,
  });
}

List<NotificationsModel> notificationsModel = [
  NotificationsModel(
      image: MyImagesPath.logo2,
      heading: 'Welcome to Home Saloon',
      text:
          "Welcome to our business app! Explore seamless operations and thrive together!",
      time: 'Just now',
      opened: false),
  NotificationsModel(
      image: MyImagesPath.profile_Image,
      heading: 'Client',
      text:
          "Hello! I've got a few questions. Can you provide quick answers? Thanks!",
      time: '2 hours ago',
      opened: false),
  NotificationsModel(
      image: MyImagesPath.saloon_Image,
      heading: 'Got new service Request',
      text:
          'Client is waiting for your request approvel. Kindly review as soon as possible.',
      time: '13 hours ago',
      opened: true),
  NotificationsModel(
      image: MyImagesPath.onBoarding_2,
      heading: 'Got positive ratting',
      text:
          'Congrulations! you got 5.0 stars rating on your previous makeup service. Keep it up.',
      time: '1 day ago',
      opened: true),
  NotificationsModel(
      image: MyImagesPath.profile_Image,
      heading: 'Welcome to Home Saloon',
      text: 'We warmly welcome you in our business based app',
      time: '1 day ago',
      opened: true),
];
