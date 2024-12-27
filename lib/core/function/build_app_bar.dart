
import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.kPrimaryColor,
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(
        Icons.arrow_back_ios,
        color: AppColors.kWhiteColor,
      ),
    ),
    title: Text(
      "Edit Name",
      style: TextStyle(
        color: AppColors.kWhiteColor,
      ),

    ),
    centerTitle: true,
  );
}