import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/home_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/menu_screen/menu_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/more_screen/more_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/offers_screen/offers_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/profile_screen/profile_screen.dart';

part 'bottom_nav_bar_event.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  static BottomNavBarBloc get(context) => BlocProvider.of(context);
  List<String> iconTitle = [
    AppStrings.menu,
    AppStrings.offers,
    AppStrings.profile,
    AppStrings.more,
  ];

  List<IconData> bottomNavBarIcon = [
    Icons.grid_view_rounded,
    FontAwesomeIcons.bagShopping,
    FontAwesomeIcons.user,
    Icons.read_more_outlined,
  ];
  List<Widget> pages = [
    MenuScreen(),
    OffersScreen(),
    ProfileScreen(),
    MoreScreen(),
    HomeScreen(),
  ];
  int currentIndex = 4;

  BottomNavBarBloc() : super(BottomNavBarInitial()) {
    on<BottomNavBarEvent>((event, emit) {
      if (event is BottomNavBarPageStarted) {
        currentIndex = 4 ;
        this.add(
          BottomNavBarPageTapped(index: currentIndex),
        );
        emit(BottomNavBarChangedState());
      }
      if (event is BottomNavBarPageTapped) {
        this.currentIndex = event.index;
        emit(BottomNavBarChangedState());
      }
    });
  }
}
