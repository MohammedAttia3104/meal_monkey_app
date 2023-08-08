import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/auth_bloc/auth_bloc.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/profile_screen/widgets/profile_screen_image_section.dart';

class ProfileScreenDataSection extends StatelessWidget {
  const ProfileScreenDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileScreenImageSection(),
        SizedBox(
          height: PaddingSize.padding18h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit,
              color: kPrimaryColor,
              size: 15.0.r,
            ),
            SizedBox(
              width: PaddingSize.padding6width,
            ),
            Text(
              AppStrings.editProfile,
              style: Styles.textStyle10Regular.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(
          height: PaddingSize.padding12h,
        ),
        Text(
          'Hi there Emilia!',
          style: Styles.textStyle16Bold,
        ),
        SizedBox(
          height: PaddingSize.padding4h,
        ),
        GestureDetector(
          onTap: () {
            context.read<AuthBloc>().add(SignOutRequest());
            GoRouter.of(context).pushReplacement(AppRouter.loginScreen);
          },
          child: Text(
            AppStrings.signOut,
            style: Styles.textStyle11Meduim,
          ),
        ),
        SizedBox(
          height: PaddingSize.padding47h,
        ),
      ],
    );
  }
}
