import 'package:flutter/cupertino.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class OTPTitleAndDescription extends StatelessWidget {
  const OTPTitleAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: PaddingSize.padding65h),
        Center(
          child: Text(
            AppStrings.sendOTPToYourMobileLine1,
            style: Styles.textStyle30Extra.copyWith(
              fontSize: TextSize.text25,
            ),
          ),
        ),
        Center(
          child: Text(
            AppStrings.sendOTPToYourMobileLine2,
            style: Styles.textStyle30Extra.copyWith(
              fontSize: TextSize.text25,
            ),
          ),
        ),
        SizedBox(
          height: PaddingSize.padding10h,
        ),
        Center(
          child: Text(
            AppStrings.oTPScreenDescripLine1,
            style: Styles.textStyle14Medium,
          ),
        ),
        Center(
          child: Text(
            AppStrings.oTPScreenDescripLine2,
            style: Styles.textStyle14Medium,
          ),
        ),
        SizedBox(
          height: PaddingSize.padding54h,
        ),
      ],
    );
  }
}
