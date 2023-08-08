import 'package:flutter/material.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/row_bar_with_icons.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RowBarWithIcons(
      text: 'Good morning Akila!',
    );
  }
}
