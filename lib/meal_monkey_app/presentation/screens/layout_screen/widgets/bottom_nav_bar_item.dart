import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/size_config.dart';

class BottomNavBarItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  final Function()? onTap;

  const BottomNavBarItem(
      {super.key,
      required this.icon,
      required this.text,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? kPrimaryColor : kSecondaryFontColor,
              size: 25.0.r,
            ),
            SizedBox(
              height: PaddingSize.padding3h,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: isSelected ? TextSize.text16 : TextSize.text12,
                color: isSelected ? kPrimaryColor : kSecondaryFontColor,
                fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
