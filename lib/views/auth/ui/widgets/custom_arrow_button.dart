import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';

class CustomArowButton extends StatelessWidget {
  CustomArowButton({
    super.key,required this.onTap,
  });
  final Function()?onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimaryColor,
          foregroundColor: AppColors.kWhiteColor,
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Icon(Icons.arrow_forward, color: AppColors.kWhiteColor),
        ));
  }
}