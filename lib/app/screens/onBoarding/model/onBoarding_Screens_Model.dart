import 'package:home_saloon/utils/images/images_Path.dart';

class OnBoardingScreenModel {
  final String image;
  OnBoardingScreenModel({
    required this.image,
  });
}

List<OnBoardingScreenModel> onBoardingScreenModel = [
  OnBoardingScreenModel(
    image: ImagesPath.onBoarding_1,
  ),
  OnBoardingScreenModel(
    image: ImagesPath.onBoarding_2,
  ),
  OnBoardingScreenModel(
    image: ImagesPath.onBoarding_3,
  ),
];
