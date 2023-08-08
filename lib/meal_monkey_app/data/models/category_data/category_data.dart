import 'package:meal_monkey_app/constants/app_assets.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';

class CategoryData {
  String categoryName;
  int noOfItems;
  String CategoryImage;

  CategoryData({
    required this.categoryName,
    required this.noOfItems,
    required this.CategoryImage,
  });
}

List<CategoryData> categoryDetails = [
  CategoryData(
    categoryName: AppStrings.foodCategory,
    noOfItems: 120,
    CategoryImage: AppAssets.foodCategory,
  ),
  CategoryData(
      categoryName: AppStrings.deveragesCategory,
      noOfItems: 220,
      CategoryImage: AppAssets.deveragesCategory),
  CategoryData(
    categoryName: AppStrings.dessertsCategory,
    noOfItems: 115,
    CategoryImage: AppAssets.dessertsCategory,
  ),
  CategoryData(
    categoryName: AppStrings.promotionsCategory,
    noOfItems: 25,
    CategoryImage: AppAssets.promotionsCategory,
  ),
];
