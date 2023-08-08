import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/Custom_Text_Form_Field.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/custom_rounded_button.dart';

class NewPasswordScreenBody extends StatelessWidget {
  const NewPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    FocusNode passwordFocusNode = FocusNode();
    FocusNode confirmPasswordFocusNode = FocusNode();
    final key = GlobalKey<FormState>();

    return Form(
      key: key,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.password,
            controller: passwordController,
            validate: (value) {
              if (value!.isEmpty) {
                return '* Password is required';
              } else if (value.length < 7) {
                return '* Password must be at least 7 char';
              }
              return null;
            },
            textOnChanged: (val) => debugPrint(val),
            keyboardType: TextInputType.visiblePassword,
            focusNode: passwordFocusNode,
            isObsecured: true,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(confirmPasswordFocusNode),
          ),
          SizedBox(
            height: PaddingSize.padding28h,
          ),
          CustomTextFormField(
            hintText: AppStrings.confirmPassword,
            controller: confirmPasswordController,
            validate: (value) {
              if (value! != passwordController.text) {
                return '* Confirm password is Wrong';
              } else if (value.length < 7) {
                return '* Confirm password must be at least 7 char';
              }
              return null;
            },
            textOnChanged: (val) => debugPrint(val),
            keyboardType: TextInputType.visiblePassword,
            focusNode: confirmPasswordFocusNode,
            textAction: TextInputAction.next,
            isObsecured: true,
          ),
          SizedBox(
            height: PaddingSize.padding28h,
          ),
          CustomRoundedButton(
            buttonText: AppStrings.next,
            onPressed: () {
              if (key.currentState!.validate()) {
                GoRouter.of(context).pushReplacement(
                  AppRouter.layOutScreen,
                );
              }
            },
            heroTag: AppStrings.newPasswordScreenTag,
          ),
        ],
      ),
    );
  }
}
