import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class ResetPasswordDescriptionAndTitle extends StatelessWidget {
  const ResetPasswordDescriptionAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: PaddingSize.padding60h,
        ),
        Text(
          AppStrings.resetPassword,
          style: Styles.textStyle30Extra,
        ),
        SizedBox(
          height: PaddingSize.padding12h,
        ),
        Center(
          child: Text(
            AppStrings.resetPasswordDiscriptionLine1,
            style: Styles.textStyle14Medium,
          ),
        ),
        Center(
          child: Text(
            AppStrings.resetPasswordDiscriptionLine2,
            style: Styles.textStyle14Medium,
          ),
        ),
        SizedBox(
          height: PaddingSize.padding60h,
        ),
      ],
    );
  }
}
