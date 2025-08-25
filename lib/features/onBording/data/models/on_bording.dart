import 'package:dalel/core/utils/app_assets.dart';

class OnBordingModel {
  final String image;
  final String title;
  final String subTitle;

  OnBordingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBordingModel> onBordingData = [
  OnBordingModel(
    image: Assets.assetsImagesOnBoarding1,
    title: 'Explore The history with Dalel in a smart way',
    subTitle:
        "Using our app’s history libraries you can find many historical periods ",
  ),
  OnBordingModel(
    image: Assets.assetsImagesOnBoarding2,
    title: "From every place on earth",
    subTitle: "A big variety of ancient places from all over the world",
  ),
  OnBordingModel(
    image: Assets.assetsImagesOnBoarding,
    title: "Using modern AI technology for better user experience",
    subTitle:
        "AI provide recommendations and helps you to continue the search journey",
  ),
];
