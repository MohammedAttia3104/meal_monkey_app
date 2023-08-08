import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 176.0.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'Location Details Here',
              style: Styles.textStyle16Bold,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          DropdownButton(
            items: List.empty(),
            onChanged: (val) {},
            iconDisabledColor: kPrimaryColor,
            iconEnabledColor: kPrimaryColor,
            elevation: 0,
            underline: SizedBox(),
            icon: FaIcon(
              FontAwesomeIcons.chevronDown,
              size: 15.0.r,
            ),
          ),
        ],
      ),
    );
  }
}
