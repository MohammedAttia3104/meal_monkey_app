import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/widgets/app_bar_home_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/widgets/horizental_list_view_home_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/widgets/location_section.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/widgets/most_popular_section.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/widgets/popular_restaurents_section.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/widgets/recent_items_section.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/search_text_form_field.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: PaddingSize.padding21width),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarHomeScreen(),
                SizedBox(
                  height: PaddingSize.padding21h,
                ),
                Text(
                  AppStrings.deliveryTo,
                  style: Styles.textStyle11Regular,
                ),
                SizedBox(
                  height: PaddingSize.padding3h,
                ),
                LocationSection(),
                SizedBox(
                  height: PaddingSize.padding34h,
                ),
                SearchTextFormField(),
                SizedBox(
                  height: PaddingSize.padding30h,
                ),
                HorizentalListViewHomeScreen(),
                SizedBox(
                  height: PaddingSize.padding57h,
                ),
                PopularRestaurentsSection(),
                SizedBox(
                  height: PaddingSize.padding42h,
                ),
                MostPopularSection(),
                SizedBox(
                  height: PaddingSize.padding36h,
                ),
                RecentItemsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
