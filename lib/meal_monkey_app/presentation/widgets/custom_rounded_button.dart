import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';

import '../../../constants/app_colors.dart';

class CustomRoundedButton extends StatelessWidget {
  CustomRoundedButton(
      {super.key,
      required this.buttonText,
      this.backgroundColor,
      this.buttonTextColor,
      this.outBorderColor,
      this.outBorderWidth,
      required this.onPressed,
      required this.heroTag});

  final String buttonText;
  final void Function()? onPressed;
  Color? buttonTextColor = kWhiteColor;
  final Color? backgroundColor;
  final Object heroTag;
  Color? outBorderColor = kPrimaryColor;
  double? outBorderWidth = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SpecificSize.roundedButtonHeight,
      child: FloatingActionButton.extended(
        heroTag: heroTag,
        label: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
          ),
        ),
        backgroundColor: backgroundColor ?? kPrimaryColor,
        onPressed: onPressed,
        shape: OutlineInputBorder(
          borderSide: BorderSide(
            color: outBorderColor ?? kPrimaryColor,
            width: outBorderWidth ?? 0,
          ),
          borderRadius: BorderRadius.circular(SpecificSize.roundedButtonRaduis),
        ),
      ),
    );
  }
}
