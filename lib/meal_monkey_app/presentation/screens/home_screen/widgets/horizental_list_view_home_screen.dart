import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class HorizentalListViewHomeScreen extends StatelessWidget {
  const HorizentalListViewHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 113.0.h,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 88.0.h,
                width: 88.0.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/haryo-setyadi-yvzzemH8-J0-unsplash.png',
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0.r),
                  ),
                ),
              ),
              SizedBox(
                height: PaddingSize.padding7h,
              ),
              Text(
                'Sri Lankan',
                style: Styles.textStyle14Semi.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: PaddingSize.padding16width,
          );
        },
        itemCount: 10,
      ),
    );
  }
}
