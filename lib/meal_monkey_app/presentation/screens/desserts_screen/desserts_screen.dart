import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey_app/constants/app_colors.dart';
import 'package:meal_monkey_app/constants/app_strings.dart';
import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/constants/styles.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/row_bar_with_icons.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/widgets/search_text_form_field.dart';

class DessertsScreen extends StatelessWidget {
  const DessertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: PaddingSize.padding21width,
                  ),
                  child: Column(
                    children: [
                      RowBarWithIcons(
                        text: AppStrings.dessertsCategory,
                        prefixIsSelected: true,
                      ),
                      SizedBox(
                        height: PaddingSize.padding24h,
                      ),
                      SearchTextFormField(),
                    ],
                  ),
                ),
                SizedBox(
                  height: PaddingSize.padding20h,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Image(
                          image:
                              AssetImage('assets/images/Component 9 – 1.png'),
                          height: 193.0.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: PaddingSize.padding21width,
                          ),
                          child: SizedBox(
                            height: 193.0.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'French Apple Pie',
                                  style: Styles.textStyle16Semi,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: kPrimaryColor,
                                    ),
                                    SizedBox(
                                      width: PaddingSize.padding4width,
                                    ),
                                    Text(
                                      '4.9',
                                      style: Styles.textStyle11Regular.copyWith(
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: PaddingSize.padding5width,
                                    ),
                                    Text(
                                      'Cakes by Tella',
                                      style: Styles.textStyle12Regular,
                                    ),
                                    SizedBox(
                                      width: PaddingSize.padding6width,
                                    ),
                                    Text(
                                      '.',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 14.0.r,
                                      ),
                                    ),
                                    Text(
                                      AppStrings.dessertsCategory,
                                      style: Styles.textStyle12Regular,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: PaddingSize.padding24h,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: PaddingSize.padding4h,
                    );
                  },
                  itemCount: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
