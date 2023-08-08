import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/auth_bloc/auth_bloc.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/signup_screen/widgets/sign_up_view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authinticated) {
            ///ToDo : How to clear previous routes in GoRouter in Flutter
            ///ToDo : equivelent to pushAndRemoveUntil ??
            GoRouter.of(context).pushReplacement(AppRouter.layOutScreen);
          }
          if (state is AuthError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
            debugPrint(state.error);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: kPrimaryColor,
              ),
            );
          }
          if (state is UnAuthinticated) {
            return const SignUpView();
          }
          return const SignUpView();
        },
      ),
    );
  }
}
