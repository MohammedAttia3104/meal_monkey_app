import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/menu_screen/widgets/background_container_with_shadow.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/menu_screen/widgets/menu_screen_fab.dart';

class CategorySingleItem extends StatelessWidget {
  const CategorySingleItem({
    super.key,
    required this.categoryImage,
    required this.categoryName,
    required this.noOfItems,
  });

  final String categoryImage;
  final String categoryName;
  final int noOfItems;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.dessertsScreen);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          BackgroundContainerWithShadow(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///ToDo : Need to Refactor
              CircleAvatar(
                radius: 35.0.r,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(categoryImage),
              ),
              SizedBox(
                width: PaddingSize.padding24width,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categoryName,
                    style: Styles.textStyle22Bold,
                  ),
                  SizedBox(
                    height: PaddingSize.padding2h,
                  ),
                  Text(
                    '${noOfItems} item',
                    style: Styles.textStyle11Regular,
                  ),
                ],
              ),
              Spacer(),
              MenuScreenFab(),
              SizedBox(
                width: 8.0.w,
              )
            ],
          ),
        ],
      ),
    );
  }
}
