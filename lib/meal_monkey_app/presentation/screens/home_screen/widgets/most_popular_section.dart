import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/widgets/most_popular_single_item.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/row_bar_with_text_button.dart';

class MostPopularSection extends StatelessWidget {
  const MostPopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowBarWithTextButton(
          onPressed: () {},
          textBar: AppStrings.mostPopular,
          textBarStyle: Styles.textStyle20Extra,
        ),
        SizedBox(
          height: PaddingSize.padding32h,
        ),
        SizedBox(
          height: 185.0.h,
          width: double.infinity,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return MostPopularSingleItem();
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: PaddingSize.padding19width,
              );
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
