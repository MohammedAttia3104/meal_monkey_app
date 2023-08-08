import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/reset_password_screen/widgets/reset_password_body.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/reset_password_screen/widgets/reset_password_description.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: PaddingSize.padding34h),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ResetPasswordDescriptionAndTitle(),
              ResetPasswordBody(),
            ],
          ),
        ),
      ),
    );
  }
}
