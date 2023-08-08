import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/size_config.dart';

import 'bottom_nav_bar_item.dart';

class BottomNavBarDetails extends StatelessWidget {
  const BottomNavBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BottomNavBarBloc.get(context);
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: kBehindFontColor,
            blurRadius: 100,
          ),
        ],
      ),
      child: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        notchMargin: SpecificSize.bottomBarNoutchMargin,
        height: 90.0.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            bloc.iconTitle.length,
            (index) => BottomNavBarItem(
              icon: bloc.bottomNavBarIcon[index],
              text: bloc.iconTitle[index],
              isSelected: index == bloc.currentIndex,
              onTap: () {
                bloc.add(BottomNavBarPageTapped(index: index));
              },
            ),
          ),
        ),
      ),
    );
  }
}
