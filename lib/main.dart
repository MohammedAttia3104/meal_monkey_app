// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey_app/auth_bloc/auth_bloc.dart';
import 'package:meal_monkey_app/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/firebase_options.dart';
import 'package:meal_monkey_app/meal_monkey_app/data/repositories/auth_repository.dart';
import 'bloc_observer.dart';
import 'constants/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';

import 'meal_monkey_app/data/repositories/firestore_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await ScreenUtil.ensureScreenSize();
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   builder: (BuildContext context) => const MyApp(),
    // ),
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, state) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AuthBloc(
                AuthRepository(),
                // FirestoreRepository(),
              ),
            ),
            BlocProvider(
              create: (context) => BottomNavBarBloc(),
            ),
          ],
          child: MaterialApp.router(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: kPrimaryFontColor,
              iconTheme: IconThemeData(
                color: kPrimaryColor,
              ),
              fontFamily: 'Metrophobic',
            ),
            routerConfig: AppRouter.router,
          ),
        );
      },
    );
  }
}

///ToDo :
///Handle Buttons Width with all screen
///Handle topOrangeShape in StartScreen(Handle start screen in all)
///Handle side&&Error&&Enable border color in theme
///Handle Rating Score
///Handle ViewAll Button in clicking
///Handle CategoryFAB Button in clicking
