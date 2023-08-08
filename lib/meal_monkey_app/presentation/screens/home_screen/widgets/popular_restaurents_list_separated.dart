import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class PopularRestaurentsList extends StatelessWidget {
  const PopularRestaurentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, index) {
        return SizedBox(
          height: 243.0.h,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png',
                ),
                height: 185.0.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: PaddingSize.padding7h,
              ),
              Text(
                'Minute by tuk tuk',
                style: Styles.textStyle16Bold,
              ),
              SizedBox(
                height: PaddingSize.padding6h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: kPrimaryColor,
                    size: 17.0.r,
                  ),
                  Text(
                    '4.9',
                    style: Styles.textStyle11Regular
                        .copyWith(color: kPrimaryColor),
                  ),
                  Text(
                    '(124 ratings) Café     Western Food',
                    style: Styles.textStyle11Regular,
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, index) {
        return SizedBox(
          height: PaddingSize.padding32h,
        );
      },
      itemCount: 3,
    );
  }
}
