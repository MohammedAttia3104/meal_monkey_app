import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_app/constants/size_config.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return TextFormField(
      maxLines: 1,
      controller: searchController,
      validator: (value) {},
      keyboardType: TextInputType.text,
      onChanged: (value) {},
      decoration: InputDecoration(
        filled: true,
        //contentPadding: EdgeInsets.symmetric(vertical: PaddingSize.padding22h),
        fillColor: kTXTFormFieldFilledColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            SpecificSize.textFormFieldBorderRaduis,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(
            SpecificSize.textFormFieldBorderRaduis,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(
            SpecificSize.textFormFieldBorderRaduis,
          ),
        ),
        hintText: AppStrings.searchFood,
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10.0.r,
            horizontal: 20.0.r,
          ),
          child: FaIcon(FontAwesomeIcons.magnifyingGlass),
        ),
      ),
    );
  }
}
