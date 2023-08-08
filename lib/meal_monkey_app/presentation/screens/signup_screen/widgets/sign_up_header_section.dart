import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class SignUpHeaderSection extends StatelessWidget {
  const SignUpHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: PaddingSize.padding60h,
        ),
        Text(
          AppStrings.signUp,
          style: Styles.textStyle30Extra,
        ),
        SizedBox(
          height: PaddingSize.padding12h,
        ),
        Text(
          AppStrings.addSignUpDetails,
          style: Styles.textStyle14Medium,
        ),
        SizedBox(
          height: PaddingSize.padding36h,
        ),
      ],
    );
  }
}
