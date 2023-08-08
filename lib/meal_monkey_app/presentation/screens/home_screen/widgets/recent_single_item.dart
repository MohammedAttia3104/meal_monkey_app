import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class RecentSingleItem extends StatelessWidget {
  const RecentSingleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 75.0.h,
          width: 75.0.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                16.0.r,
              ),
            ),
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/chad-montano-MqT0asuoIcU-unsplash.png'),
            ),
          ),
        ),
        SizedBox(
          width: PaddingSize.padding21width,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mulberry Pizza by Josh',
              style: Styles.textStyle16Bold.copyWith(fontSize: 18.0.sp),
            ),
            Text(
              'Café     Western Food',
              style: Styles.textStyle11Regular,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 10.0.r,
                ),
                Text(
                  '4.9',
                  style: Styles.textStyle11Regular
                      .copyWith(color: kPrimaryColor),
                ),
                Text(
                  '(124 Ratings)',
                  style: Styles.textStyle11Regular,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
