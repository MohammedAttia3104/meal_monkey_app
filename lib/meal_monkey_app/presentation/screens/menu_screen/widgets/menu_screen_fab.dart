import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';

class MenuScreenFab extends StatelessWidget {
  const MenuScreenFab({super.key,});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0.h,
      width: 35.0.w,
      child: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.dessertsScreen);
        },
        shape: CircleBorder(),
        heroTag: AppStrings.categoryFAB,
        backgroundColor: kWhiteColor,
        child: Icon(
          Icons.arrow_forward_ios,
          color: kPrimaryColor,
          size: 20.0.r,
        ),
      ),
    );
  }
}
