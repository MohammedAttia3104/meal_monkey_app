import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/more_screen/widgets/item_more_screen_list.dart';

import '../../widgets/row_bar_with_icons.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: PaddingSize.padding21width),
            child: Column(
              children: [
                RowBarWithIcons(
                  text: AppStrings.more,
                ),
                SizedBox(
                  height: PaddingSize.padding30h,
                ),
                ItemMoreScreenList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
