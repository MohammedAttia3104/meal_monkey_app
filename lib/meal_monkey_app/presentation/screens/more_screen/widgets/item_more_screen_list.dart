import 'package:meal_monkey_app/constants/size_config.dart';
import 'package:meal_monkey_app/meal_monkey_app/data/models/more_screen_data_model/more_screen_data.dart';
import 'package:meal_monkey_app/meal_monkey_app/presentation/screens/more_screen/widgets/more_screen_single_item.dart';
import 'package:flutter/material.dart';

class ItemMoreScreenList extends StatelessWidget {
  const ItemMoreScreenList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return MoreScreenSingleItem(
          itemIcon: moreScreenDataEntry[index].icon,
          itemOnPressed: moreScreenDataEntry[index].onPressed,
          itemTitle: moreScreenDataEntry[index].title,
          itemOnTapped: moreScreenDataEntry[index].onTapped,
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: PaddingSize.padding19h,
        );
      },
      itemCount: moreScreenDataEntry.length,
    );
  }
}
