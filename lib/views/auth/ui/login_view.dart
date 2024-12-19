import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(
            "Welcome To our Market",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 25,
          ),
          Card(
            color: AppColors.kWhiteColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),),
            child: Column(
              children: [
                TextFormField(decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:BorderSide(color: AppColors.kBordersideColor),

                  ),

                ),),
              ],
            ),
          ),

        ],
      )),
    );
  }
}
