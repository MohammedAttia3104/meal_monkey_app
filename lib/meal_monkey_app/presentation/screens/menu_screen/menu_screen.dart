import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_assets.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/menu_screen/widgets/category_list_with_details.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/row_bar_with_icons.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/search_text_form_field.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: PaddingSize.padding21width),
              child: Column(
                children: [
                  RowBarWithIcons(
                    text: AppStrings.menu,
                  ),
                  SizedBox(
                    height: PaddingSize.padding24h,
                  ),
                  SearchTextFormField(),
                  SizedBox(
                    height: PaddingSize.padding30h,
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Image(
                  height: 485.0.h,
                  width: 97.0.w,
                  image: AssetImage(
                    AppAssets.orangeSlideBar,
                  ),
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: PaddingSize.padding21width),
                  child: Column(
                    children: [
                      SizedBox(
                        height: PaddingSize.padding30h,
                      ),
                      CategoryListWithDetails(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
