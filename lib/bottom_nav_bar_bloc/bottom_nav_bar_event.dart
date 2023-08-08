part of 'bottom_nav_bar_bloc.dart';

@immutable
abstract class BottomNavBarEvent {}

class BottomNavBarPageStarted extends BottomNavBarEvent{}


class BottomNavBarPageTapped extends BottomNavBarEvent{
   final int index;
   BottomNavBarPageTapped({required this.index});
}