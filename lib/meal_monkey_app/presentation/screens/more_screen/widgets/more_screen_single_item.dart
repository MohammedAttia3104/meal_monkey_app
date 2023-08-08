import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class MoreScreenSingleItem extends StatelessWidget {
  final IconData itemIcon;
  final String itemTitle;
  final Function() itemOnPressed;
  final Function() itemOnTapped;

  const MoreScreenSingleItem({
    super.key,
    required this.itemIcon,
    required this.itemOnPressed,
    required this.itemOnTapped,
    required this.itemTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: itemOnTapped,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 317.0.w,
                height: 75.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7.0.r),
                  ),
                  color: Colors.grey[200],
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: PaddingSize.padding13width,
              ),
              CircleAvatar(
                radius: 26.0.r,
                child: Icon(
                  itemIcon,
                  size: 25.0.r,
                  color: kBlackColor,
                ),
                backgroundColor: kBehindFontColor,
              ),
              SizedBox(
                width: PaddingSize.padding19width,
              ),
              Text(
                itemTitle,
                style: Styles.textStyle14Semi,
              ),
              Spacer(),
              CircleAvatar(
                radius: 22.0.r,
                backgroundColor: Colors.grey[200],
                child: IconButton(
                  onPressed: itemOnPressed,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: kSecondaryFontColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
