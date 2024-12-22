import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';
import 'package:market_app/core/components/Cusrom_search_field.dart';
import 'package:market_app/views/auth/ui/widgets/custom_arrow_button.dart';
import 'package:market_app/views/auth/ui/widgets/custom_text_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          CustomSearchField(),
          SizedBox(height: 20.0,),
          Image.asset("assets/images/buy.jpg"),
          SizedBox(height: 15.0,),
          Text("Popular Categories",style: TextStyle(fontSize:20, ),),
          SizedBox(height: 15.0,),
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,

                itemCount: categories.length,
                itemBuilder: (context,index){
              return CircleAvatar(
                backgroundColor: AppColors.kPrimaryColor,
                foregroundColor: AppColors.kWhiteColor,
                child: Icon(categories[index].icon),
              );

            }),
          ),

        ],
      ),
    );
  }
}

List<Category>categories=[
  Category(icon:Icons.sports, text: "Sport"),
  Category(icon:Icons.tv, text: "Electronics"),
  Category(icon:Icons.collections, text: "Collections"),
  Category(icon:Icons.book, text: "Books"),
  Category(icon:Icons.sports, text: "Sport"),
  Category(icon:Icons.games, text: "Games"),

];






class Category{
  final IconData icon;
  final String text;

  Category({required this.icon, required this.text});


}

