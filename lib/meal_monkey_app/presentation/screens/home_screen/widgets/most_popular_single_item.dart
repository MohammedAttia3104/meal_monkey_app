import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class MostPopularSingleItem extends StatelessWidget {
  const MostPopularSingleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185.0.h,
      width: 230.0.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              'assets/images/karthik-garikapati-oBbTc1VoT-0-unsplash.png',
            ),
            height: 135.0.h,
            //width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: PaddingSize.padding10h,
          ),
          Text(
            'Café De Bambaa',
            style: Styles.textStyle16Bold.copyWith(
              fontSize: 18.0.sp,
            ),
          ),
          SizedBox(
            height: PaddingSize.padding1h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Café . Western Food',
                style: Styles.textStyle11Regular,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                width: PaddingSize.padding16width,
              ),
              Icon(
                Icons.star,
                color: kPrimaryColor,
                size: 11.0.r,
              ),
              Text(
                '4.9',
                style: Styles.textStyle11Regular
                    .copyWith(color: kPrimaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
