import 'package:flutter/material.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBody(),
    );
  }
}
