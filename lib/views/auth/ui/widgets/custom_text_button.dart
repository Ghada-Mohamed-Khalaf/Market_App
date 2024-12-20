import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    super.key,
    this.onTap,
    required this.text,
  });

  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
            color: AppColors.kPrimaryColor),
      ),
    );
  }
}