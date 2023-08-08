import 'package:flutter/material.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/signup_screen/widgets/sign_up_body_section.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/signup_screen/widgets/sign_up_header_section.dart';

import '../../../../../constants/app_strings.dart';
import '../../../../../constants/size_config.dart';
import '../../../widgets/custom_rounded_button.dart';
import 'have_an_account.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: PaddingSize.padding34h),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignUpHeaderSection(),
                SignUpBodySection(),
                HaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
