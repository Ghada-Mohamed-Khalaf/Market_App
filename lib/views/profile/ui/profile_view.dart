import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        margin: EdgeInsets.all(24.0),
        color: AppColors.kWhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [ CircleAvatar(
                radius: 60,
                backgroundColor: AppColors.kPrimaryColor,
                foregroundColor:AppColors.kWhiteColor ,
              )

              ],
            ),
        ),
      ),
    );
  }
}
