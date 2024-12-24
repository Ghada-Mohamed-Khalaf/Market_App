
import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';
import 'package:market_app/core/components/Custom_search_field.dart';
import 'package:market_app/core/components/cache_image.dart';
import 'package:market_app/core/components/product_card.dart';
import 'package:market_app/views/home/ui/widget/categories_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          CustomSearchField(),
          SizedBox(
            height: 20.0,
          ),
          Image.asset(
            "assets/images/buy.jpg",

          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Popular Categories",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          CategoriesList(),
          SizedBox(
            height: 10,
          ),
          Text("Recently Products",  style: TextStyle(
            fontSize: 20,
          ),),
          SizedBox(height: 15,),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
              itemBuilder:(context,index) {
            return ProductCard();
          })
        ],
      ),
    );
  }
}







List<Category> categories = [
  Category(icon: Icons.sports, text: "Sport"),
  Category(icon: Icons.tv, text: "Electronics"),
  Category(icon: Icons.collections, text: "Collections"),
  Category(icon: Icons.book, text: "Books"),
  Category(icon: Icons.sports, text: "Sport"),
  Category(icon: Icons.games, text: "Games"),
  Category(icon: Icons.bike_scooter, text: "bikes"),
];

class Category {
  final IconData icon;
  final String text;

  Category({required this.icon, required this.text});
}
