import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/row_bar_with_text_button.dart';

import 'popular_restaurents_list_separated.dart';

class PopularRestaurentsSection extends StatelessWidget {
  const PopularRestaurentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowBarWithTextButton(
          onPressed: () {},
          textBar: AppStrings.popularResturant,
          textBarStyle: Styles.textStyle20Extra,
        ),
        SizedBox(
          height: PaddingSize.padding32h,
        ),
        PopularRestaurentsList(),
      ],
    );
  }
}
