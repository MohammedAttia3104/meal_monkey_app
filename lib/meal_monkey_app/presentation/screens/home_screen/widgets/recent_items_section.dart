import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/widgets/recent_single_item.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/row_bar_with_text_button.dart';

class RecentItemsSection extends StatelessWidget {
  const RecentItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowBarWithTextButton(
          onPressed: () {},
          textBar: AppStrings.recentItems,
          textBarStyle: Styles.textStyle26Extra,
        ),
        SizedBox(
          height: PaddingSize.padding26h,
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return RecentSingleItem();
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: PaddingSize.padding14h,
            );
          },
          itemCount: 3,
        ),
      ],
    );
  }
}
