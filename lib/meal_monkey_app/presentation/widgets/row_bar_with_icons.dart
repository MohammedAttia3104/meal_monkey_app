import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_router.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';

class RowBarWithIcons extends StatelessWidget {
  final String text;
  bool? prefixIsSelected;
  bool? suffixIsSelected;

  RowBarWithIcons(
      {super.key,
      required this.text,
      this.prefixIsSelected,
      this.suffixIsSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: PaddingSize.padding54h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            prefixIsSelected == true
                ? Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: kPrimaryFontColor,
                        ),
                      ),
                      Text(
                        text,
                        style: Styles.textStyle24Extra.copyWith(
                          color: kPrimaryFontColor,
                        ),
                      ),
                    ],
                  )
                : Text(
                    text,
                    style: Styles.textStyle24Extra.copyWith(
                      fontSize: TextSize.text20,
                      color: kPrimaryFontColor,
                    ),
                  ),

            //Spacer(),
            suffixIsSelected == true
                ? SizedBox()
                : IconButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.cartScreen);
                    },
                    icon: Icon(
                      Icons.shopping_cart,
                      color: kPrimaryFontColor,
                    ),
                  ),
          ],
        ),
      ],
    );
  }
}
