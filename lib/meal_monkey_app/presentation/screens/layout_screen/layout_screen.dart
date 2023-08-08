// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/layout_screen/widgets/lay_out_body_details.dart';

class LayOutScreen extends StatelessWidget {
  const LayOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: LayOutBodyDetails(),
    );
  }
}
