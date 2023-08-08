import 'package:flutter/material.dart';
import '../../../../constants/app_strings.dart';

class MoreScreenData {
  IconData icon;
  String title;
  Function() onPressed;
  Function() onTapped;

  MoreScreenData({
    required this.icon,
    required this.title,
    required this.onPressed,
    required this.onTapped,
  });
}

List<MoreScreenData> moreScreenDataEntry = [
  MoreScreenData(
    icon: Icons.monetization_on,
    title: AppStrings.paymentDetails,
    onPressed: () {},
    onTapped: () {},
  ),
  MoreScreenData(
    icon: Icons.shopping_bag,
    title: AppStrings.myOrders,
    onPressed: () {},
    onTapped: () {},
  ),
  MoreScreenData(
    icon: Icons.notifications,
    title: AppStrings.notifications,
    onPressed: () {},
    onTapped: () {},
  ),
  MoreScreenData(
    icon: Icons.email,
    title: AppStrings.inbox,
    onPressed: () {},
    onTapped: () {},
  ),
  MoreScreenData(
    icon: Icons.info,
    title: AppStrings.aboutUs,
    onPressed: () {},
    onTapped: () {},
  ),
];
