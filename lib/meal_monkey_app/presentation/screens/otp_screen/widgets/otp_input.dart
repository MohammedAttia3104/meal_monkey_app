import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';

class OTPInput extends StatelessWidget {
  const OTPInput(
      {super.key, required this.autoFocus, required this.controller});

  final bool autoFocus;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: SpecificSize.otpInputHeight,
      width: SpecificSize.otpInputWidht,
      child: TextField(
        autofocus: autoFocus,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        controller: controller,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                SpecificSize.otpInputBorderRaduis,
              ),
            ),
          ),
          hintText: AppStrings.oTPHintText,
          counterText: '',
          hintStyle: TextStyle(
            color: kBehindFontColor,
            fontSize: TextSize.text22,

          ),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
