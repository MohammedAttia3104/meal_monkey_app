import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'widgets/splash_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    late bool isLogin;
    final loggedUser = FirebaseAuth.instance.currentUser;
    if (loggedUser == null) {
      isLogin = false;
    } else {
      isLogin = true;
    }
    Timer(
      const Duration(seconds: 3),
      () {
        isLogin == true
            ? GoRouter.of(context).go(AppRouter.layOutScreen)
            : GoRouter.of(context).go(AppRouter.onBoardingScreen);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
