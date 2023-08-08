import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/data/models/category_data/category_data.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/menu_screen/widgets/category_single_item.dart';

class CategoryListWithDetails extends StatelessWidget {
  const CategoryListWithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return CategorySingleItem(
            categoryImage: categoryDetails[index].CategoryImage,
            categoryName: categoryDetails[index].categoryName,
            noOfItems: categoryDetails[index].noOfItems,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: PaddingSize.padding24h,
          );
        },
        itemCount: categoryDetails.length);
  }
}
