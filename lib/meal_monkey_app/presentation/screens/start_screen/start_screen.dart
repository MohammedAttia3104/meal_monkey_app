import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/constants/app_assets.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/splash_screen/widgets/splash_content.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/custom_rounded_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300.h,
                  //width: double.infinity,
                ),
                const SplashContent(),
                SizedBox(
                  height: PaddingSize.padding40h,
                ),
                Center(
                  child: Text(
                    AppStrings.startUpperDescription,
                    style: Styles.textStyle14Medium.copyWith(
                      fontSize: TextSize.text13,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    AppStrings.startLowerDescription,
                    style: Styles.textStyle14Medium.copyWith(
                      fontSize: TextSize.text13,
                    ),
                  ),
                ),
                SizedBox(
                  height: PaddingSize.padding36h,
                ),
                CustomRoundedButton(
                  buttonText: AppStrings.login,
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.loginScreen);
                  },
                  heroTag: AppStrings.tagStart1,
                ),
                SizedBox(
                  height: PaddingSize.padding20h,
                ),
                CustomRoundedButton(
                  buttonText: AppStrings.createAnAccount,
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.signUpScreen);
                  },
                  outBorderColor: kPrimaryColor,
                  backgroundColor: kWhiteColor,
                  buttonTextColor: kPrimaryColor,
                  outBorderWidth: 1,
                  heroTag: AppStrings.tagStart2,
                ),
                SizedBox(
                  height: PaddingSize.padding42h,
                ),
              ],
            ),
            const Image(
              //width: double.infinity,
              //height: SpecificSize.topOrangeShapeHeight,
              image: AssetImage(
                AppAssets.orangeTopFace,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
