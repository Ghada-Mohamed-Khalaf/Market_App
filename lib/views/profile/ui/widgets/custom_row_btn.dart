import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';

class CustomRowBtn extends StatelessWidget {
  CustomRowBtn({
    super.key,
    this.onTap,
    required this.icon,
    required this.text,
  });

  final void Function()? onTap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kPrimaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: AppColors.kWhiteColor,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: AppColors.kWhiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.kWhiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}