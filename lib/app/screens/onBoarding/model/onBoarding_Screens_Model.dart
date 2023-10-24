import '../../../../resources/images/images_Path.dart';

class OnBoardingScreenModel {
  final String image;
  OnBoardingScreenModel({
    required this.image,
  });
}

List<OnBoardingScreenModel> onBoardingScreenModel = [
  OnBoardingScreenModel(
    image: MyImagesPath.onBoarding_1,
  ),
  OnBoardingScreenModel(
    image: MyImagesPath.onBoarding_2,
  ),
  OnBoardingScreenModel(
    image: MyImagesPath.onBoarding_3,
  ),
];
