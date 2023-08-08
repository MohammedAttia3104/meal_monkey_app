import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';

class BackgroundContainerWithShadow extends StatelessWidget {
  const BackgroundContainerWithShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 87.0.h,
      width: 280.0.w,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(43.0.r),
              bottomLeft: Radius.circular(43.0.r),
              bottomRight: Radius.circular(10.0.r),
              topRight: Radius.circular(10.0.r),
            ),
            boxShadow: [
              BoxShadow(
                color: kBehindFontColor,
                blurRadius: 12.0.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
