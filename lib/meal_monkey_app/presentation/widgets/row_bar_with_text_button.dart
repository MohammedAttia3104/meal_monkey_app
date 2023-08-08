import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class RowBarWithTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String textBar;
  final TextStyle textBarStyle;

  const RowBarWithTextButton(
      {super.key,
      required this.onPressed,
      required this.textBar,
      required this.textBarStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textBar,
          style: textBarStyle,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            AppStrings.viewAllTextButton,
            style: Styles.textStyle13Meduim.copyWith(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
