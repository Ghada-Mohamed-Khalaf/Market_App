import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';
import 'package:market_app/views/home/ui/home_view.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,

          itemCount: categories.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.kPrimaryColor,
                    foregroundColor: AppColors.kWhiteColor,
                    child: Icon(categories[index].icon),
                  ),
                  Text(categories[index].text),
                ],
              ),
            );

          }),
    );
  }
}