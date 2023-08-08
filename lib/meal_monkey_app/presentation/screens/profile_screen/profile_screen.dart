import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/profile_screen/widgets/profile_screen_body.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/profile_screen/widgets/profile_screen_data_section.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/row_bar_with_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: PaddingSize.padding21width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RowBarWithIcons(
                    text: AppStrings.profile,
                  ),
                  SizedBox(
                    height: PaddingSize.padding30h,
                  ),
                  ProfileScreenDataSection(),
                  SizedBox(
                    height: PaddingSize.padding24h,
                  ),
                  ProfileScreenBody(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
