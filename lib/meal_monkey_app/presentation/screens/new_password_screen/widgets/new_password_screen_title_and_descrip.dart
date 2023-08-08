import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class NewPasswordScreenTileAndDescrip extends StatelessWidget {
  const NewPasswordScreenTileAndDescrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: PaddingSize.padding60h,
        ),
        Text(
          AppStrings.newPasswordScreenTitle,
          style: Styles.textStyle30Extra,
        ),
        SizedBox(
          height: PaddingSize.padding12h,
        ),
        Text(
          AppStrings.newPasswordScreenDescrip,
          style: Styles.textStyle14Medium,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: PaddingSize.padding40h,
        ),

      ],
    );
  }
}
