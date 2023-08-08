import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';

class FabDetails extends StatelessWidget {
  const FabDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BottomNavBarBloc.get(context);

    return SizedBox(
      height: 76.0.h,
      width: 76.0.w,
      child: FloatingActionButton(
        onPressed: () {
          bloc.add(BottomNavBarPageStarted());
        },
        backgroundColor:
            bloc.currentIndex == 4 ? kPrimaryColor : kBehindFontColor,
        child: Icon(
          Icons.home,
          size: 45.0.r,
        ),
      ),
    );
  }
}
