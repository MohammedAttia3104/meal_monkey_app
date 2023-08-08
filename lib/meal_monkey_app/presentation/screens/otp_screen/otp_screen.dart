import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/otp_screen/widgets/otp_input.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/custom_rounded_button.dart';
import 'widgets/otp_title_and_description.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpFieldOne = TextEditingController();
  TextEditingController otpFieldTwo = TextEditingController();
  TextEditingController otpFieldThree = TextEditingController();
  TextEditingController otpFieldFour = TextEditingController();
  String? oTPInputCheck;

  @override
  void dispose() {
    super.dispose();
    otpFieldFour.dispose();
    otpFieldThree.dispose();
    otpFieldTwo.dispose();
    otpFieldOne.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OTPTitleAndDescription(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OTPInput(
                autoFocus: true,
                controller: otpFieldOne,
              ),
              OTPInput(
                autoFocus: false,
                controller: otpFieldTwo,
              ),
              OTPInput(
                autoFocus: false,
                controller: otpFieldThree,
              ),
              OTPInput(
                autoFocus: false,
                controller: otpFieldFour,
              ),
            ],
          ),
          SizedBox(
            height: PaddingSize.padding36h,
          ),
          CustomRoundedButton(
            buttonText: AppStrings.next,
            onPressed: () {
              // if (oTPInputCheck ==
              //     otpFieldOne.text +
              //         otpFieldTwo.text +
              //         otpFieldThree.text +
              //         otpFieldFour.text) {
              //   GoRouter.of(context).pushReplacement(
              //     AppRouter.newPasswordScreen,
              //   );
              // } else{
              //   ScaffoldMessenger.of(context).showSnackBar(
              //       const SnackBar(content: Text("Please enter OTP")));
              // }
              GoRouter.of(context).pushReplacement(
                AppRouter.newPasswordScreen,
              );
            },
            heroTag: AppStrings.tag4,
          ),
          SizedBox(
            height: PaddingSize.padding34h,
          ),
        ],
      ),
    );
  }
}
