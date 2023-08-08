import 'package:meal_monkey_app/constants/app_assets.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';

class OnBoardingDataModel {
  String? onBoardingImagePath;
  String? onBoardingTitle;
  String? onBoardingDescription;

  OnBoardingDataModel({
    required this.onBoardingImagePath,
    required this.onBoardingTitle,
    required this.onBoardingDescription,
  });
}

List<OnBoardingDataModel> onBoardingDataContent = [
  OnBoardingDataModel(
    onBoardingImagePath: AppAssets.onboardingImageOne,
    onBoardingTitle: AppStrings.onBoardingTitleScreen1,
    onBoardingDescription: AppStrings.onBoardingDescriptionScreen1,
  ),
  OnBoardingDataModel(
    onBoardingImagePath: AppAssets.onboardingImageTwo,
    onBoardingTitle: AppStrings.onBoardingTitleScreen2,
    onBoardingDescription: AppStrings.onBoardingDescriptionScreen2,
  ),
  OnBoardingDataModel(
    onBoardingImagePath: AppAssets.onboardingImageThree,
    onBoardingTitle: AppStrings.onBoardingTitleScreen3,
    onBoardingDescription: AppStrings.onBoardingDescriptionScreen3,
  ),
];
