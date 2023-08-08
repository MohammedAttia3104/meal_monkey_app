import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey_app/auth_bloc/auth_bloc.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/Custom_Text_Form_Field.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/custom_rounded_button.dart';

class UpperLoginSection extends StatefulWidget {
  const UpperLoginSection({super.key});

  @override
  State<UpperLoginSection> createState() => _UpperLoginSectionState();
}

class _UpperLoginSectionState extends State<UpperLoginSection> {

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final emailFocusNode = FocusNode();
    final passwordFocusNode = FocusNode();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          Text(
            AppStrings.login,
            style: Styles.textStyle30Extra,
          ),
          SizedBox(
            height: PaddingSize.padding12h,
          ),
          Text(
            AppStrings.addLoginDetails,
            style: Styles.textStyle14Medium,
          ),
          SizedBox(
            height: PaddingSize.padding36h,
          ),
          CustomTextFormField(
            hintText: AppStrings.yourEmail,
            controller: emailController,
            validate: (value) {
              if (value!.isEmpty) {
                return AppStrings.emptyEmailInputError;
              }
              return null;
            },
            textOnChanged: (p0) => debugPrint(p0),
            keyboardType: TextInputType.emailAddress,
            focusNode: emailFocusNode,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(passwordFocusNode),
            textAction: TextInputAction.next,
          ),
          SizedBox(
            height: PaddingSize.padding28h,
          ),
          CustomTextFormField(
            hintText: AppStrings.password,
            controller: passwordController,
            validate: (value) {
              if (value!.isEmpty) {
                return AppStrings.emptyEmailInputError;
              }
              return null;
            },
            textOnChanged: (p0) => debugPrint(p0),
            keyboardType: TextInputType.visiblePassword,
            focusNode: passwordFocusNode,
            textAction: TextInputAction.done,
            isObsecured: true,
          ),
          SizedBox(
            height: PaddingSize.padding28h,
          ),
          CustomRoundedButton(
            heroTag: AppStrings.loginDoneTag,
            buttonText: AppStrings.login,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                BlocProvider.of<AuthBloc>(context).add(
                  SignInRequest(
                    emailController.text,
                    passwordController.text,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }


}
