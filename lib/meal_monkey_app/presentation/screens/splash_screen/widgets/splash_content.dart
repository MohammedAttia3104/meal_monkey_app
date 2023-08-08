import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_assets.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: PaddingSize.padding34h,
        ),
        SizedBox(
          height: 105.h,
          width: 103.w,
          child: const Image(
            image: AssetImage(
              AppAssets.monkeyFace,
            ),
          ),
        ),
        SizedBox(
          height: PaddingSize.padding14h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.meal,
              style: Styles.textStyle30Extra.copyWith(
                color: kPrimaryColor,
              ),
            ),
            Text(
              AppStrings.monkey,
              style: Styles.textStyle30Extra,
            ),
          ],
        ),
        SizedBox(
          height: PaddingSize.padding6h,
        ),
        Text(
          AppStrings.foodDelivery,
          style: Styles.textStyle10Regular.copyWith(
            letterSpacing: 1.3,
            /// todo : Refactor
          ),
        ),
      ],
    );
  }
}
