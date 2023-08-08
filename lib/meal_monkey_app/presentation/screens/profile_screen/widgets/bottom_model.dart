// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker/image_picker.dart';
//
// import '../../../../../profile_cubit/profile_cubit.dart';
//
//
// class BottomModel extends StatefulWidget implements PreferredSizeWidget {
//   const BottomModel({Key? key, required this.cubit}) : super(key: key);
//   final ProfileCubit cubit;
//
//   @override
//   State<BottomModel> createState() => _BottomModelState();
//
//   @override
//   Size get preferredSize => const Size.fromHeight(50.0);
// }
//
// class _BottomModelState extends State<BottomModel> {
//   File? myImage;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.only(top: 30),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'Please Select Image way',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () =>
//                           widget.cubit.selectImage(source: ImageSource.camera),
//                       child: Row(
//                         children: const [
//                           Icon(
//                             Icons.camera_alt,
//                             size: 20,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             'Camera',
//                             style: TextStyle(
//                                 fontSize: 15, fontWeight: FontWeight.w500),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 50,
//                     ),
//                     ElevatedButton(
//                       onPressed: () =>
//                           widget.cubit.selectImage(source: ImageSource.gallery),
//                       child: Row(
//                         children: const [
//                           Icon(
//                             Icons.image_search_sharp,
//                             size: 20,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             'Gallery',
//                             style: TextStyle(
//                                 fontSize: 15, fontWeight: FontWeight.w500),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// // void getImage({required ImageSource source}) async {
// //   final file = await ImagePicker().pickImage(source: source);
// //   if (file?.path != null) {
// //     setState(() {
// //       myImage = File(file!.path);
// //     });
// //   }
// // }
// }