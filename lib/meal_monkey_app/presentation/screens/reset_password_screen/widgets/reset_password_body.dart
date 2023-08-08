import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/Custom_Text_Form_Field.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/custom_rounded_button.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.email,
            controller: emailController,
            validate: (value) {
              if (value!.isEmpty) {
                return '* Email is required';
              } else if (!value.endsWith("@gmail.com")) {
                return '* Email must be end with @gmail.com';
              } else if (value.length < 13) {
                return '* Email must be at least 13 digits';
              }
              return null;
            },
            textOnChanged: (val) => debugPrint(val),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: PaddingSize.padding34h,
          ),
          CustomRoundedButton(
            buttonText: AppStrings.send,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                GoRouter.of(context).push(AppRouter.otpScreen);
              }
            },
            heroTag: AppStrings.tag3,
          ),
        ],
      ),
    );
  }
}
