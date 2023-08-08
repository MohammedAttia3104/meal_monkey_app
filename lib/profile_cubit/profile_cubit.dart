// import 'dart:io';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';
//
// import '../meal_monkey_app/presentation/screens/login_screen/login_screen.dart';
//
// part 'profile_state.dart';
//
// class ProfileCubit extends Cubit<ProfileStates> {
//   ProfileCubit() : super(ProfileInitial());
//
//   static ProfileCubit get(BuildContext context) => BlocProvider.of(context);
//
//   File? myImage;
//   final formKey = GlobalKey<FormState>();
//
//   final navigatorKey = GlobalKey<NavigatorState>();
//
//   void selectImage({ImageSource? source}) {
//     ImagePicker.platform
//         .getImage(
//       source: source!,
//     )
//         .then((value) {
//       if (value != null) {
//         myImage = File(value.path);
//         Navigator.pop(navigatorKey.currentContext!);
//         emit(ProfileChangeImageState());
//       }
//     });
//   }
//
//   // signOut(BuildContext context) async {
//   //   return await FirebaseAuth.instance.signOut().then((value) {
//   //     navigatorTo(
//   //       page: const LoginScreen(),
//   //       context: context,
//   //     );
//   //   });
//   // }
//
// //  setImage(){
// //   if (myImage != null)
// //     Image.file(
// //       myImage!,
// //       height: 200.h,
// //       width: 200.w,
// //       fit: BoxFit.cover,
// //     );
// //   emit(ProfileSetImageState());
// // }
// }
