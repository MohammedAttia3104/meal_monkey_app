import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/new_password_screen/widgets/new_password_screen_body.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/new_password_screen/widgets/new_password_screen_title_and_descrip.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: PaddingSize.padding36width,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NewPasswordScreenTileAndDescrip(),
              NewPasswordScreenBody(),
            ],
          ),
        ),
      ),
    );
  }
}
