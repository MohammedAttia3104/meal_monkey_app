import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class DoNotHaveAnAccountLoginSection extends StatelessWidget {
  const DoNotHaveAnAccountLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.already,
          style: Styles.textStyle14Medium,
        ),
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.signUpScreen);

          },
          child: Text(
            AppStrings.signUp,
            style: Styles.textStyle14Medium.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
