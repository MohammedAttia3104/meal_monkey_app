import 'dart:io';

import 'package:flutter/material.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileScreenImageSection extends StatefulWidget {
  const ProfileScreenImageSection({super.key});

  @override
  State<ProfileScreenImageSection> createState() =>
      _ProfileScreenImageSectionState();
}

class _ProfileScreenImageSectionState extends State<ProfileScreenImageSection> {
   File? image;
  final imagePicker = ImagePicker();

  void uploadImageFromCamera() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedImage == null) {
      setState(() {
        image = File(pickedImage!.path);
      });
    } else {}
  }

  @override
  void initState() {
    super.initState();

    uploadImageFromCamera();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CircleAvatar(
          radius: SpecificSize.imageProfileCircleAvatarRaduis,
          backgroundImage: image != null
              ? Image.file(image!) as ImageProvider
              : AssetImage('assets/images/profile.jpeg'),
        ),
        Container(
          height: PaddingSize.padding24h,
          color: kProfileIconBackgroundColor,
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: IconButton(
            onPressed: () {
              uploadImageFromCamera();
            },
            icon: Icon(
              Icons.camera_alt,
              color: kSecondaryFontColor,
            ),
          ),
        ),
      ],
    );
  }
}
