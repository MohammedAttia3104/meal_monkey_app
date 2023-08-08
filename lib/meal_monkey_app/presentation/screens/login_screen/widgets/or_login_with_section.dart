// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey_app/auth_bloc/auth_bloc.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/custom_rounded_button_with_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrLoginWithSection extends StatelessWidget {
  const OrLoginWithSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.orLoginWith,
          style: Styles.textStyle14Medium,
        ),
        SizedBox(
          height: PaddingSize.padding28h,
        ),
        CustomRoundedButtonWithIcon(
          labelText: AppStrings.loginWithFacebook,
          backgroundColor: kBlueColor,
          prefixIcon: FontAwesomeIcons.facebookF,
          onPressed: () {},
          tag: AppStrings.tag1,
        ),
        SizedBox(
          height: PaddingSize.padding28h,
        ),
        CustomRoundedButtonWithIcon(
          labelText: AppStrings.loginWithGoogle,
          backgroundColor: kRedColor,
          prefixIcon: FontAwesomeIcons.googlePlusG,
          onPressed: () {
            BlocProvider.of<AuthBloc>(context).add(GoogleSignInRequest());
          },
          tag: AppStrings.tag2,
        ),
      ],
    );
  }
}
