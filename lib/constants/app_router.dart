import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/cart_screen/cart_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/desserts_screen/desserts_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/home_screen/home_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/login_screen/login_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/new_password_screen/new_password_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/otp_screen/otp_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/reset_password_screen/reset_password_screen.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/start_screen/start_screen.dart';
import '../meal_monkey_app/presentation/screens/layout_screen/layout_screen.dart';
import '../meal_monkey_app/presentation/screens/onboarding_screen/onboarding_screen.dart';
import '../meal_monkey_app/presentation/screens/signup_screen/sign_up_screen.dart';

abstract class AppRouter {
  static const startScreen = '/startScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const layOutScreen = '/layOutScreen';
  static const homeScreen = '/homeScreen';
  static const resetPasswordScreen = '/resetPasswordScreen';
  static const otpScreen = '/otpScreen';
  static const newPasswordScreen = '/newPasswordScreen';
  static const onBoardingScreen = '/onBoardingScreen';
  static const cartScreen = '/cartScreen';
  static const dessertsScreen = '/dessertsScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: startScreen,
        builder: (context, state) => const StartScreen(),
      ),
      GoRoute(
        path: loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: signUpScreen,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: layOutScreen,
        builder: (context, state) => const LayOutScreen(),
      ),
      GoRoute(
        path: resetPasswordScreen,
        builder: (context, state) => const ResetPasswordScreen(),
      ),
      GoRoute(
        path: otpScreen,
        builder: (context, state) => const OTPScreen(),
      ),
      GoRoute(
        path: newPasswordScreen,
        builder: (context, state) => const NewPasswordScreen(),
      ),
      GoRoute(
        path: onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: cartScreen,
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: dessertsScreen,
        builder: (context, state) => const DessertsScreen(),
      ),

    ],
  );
}
