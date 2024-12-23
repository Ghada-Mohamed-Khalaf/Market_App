import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';
import 'package:market_app/core/components/Cusrom_search_field.dart';
import 'package:market_app/views/home/ui/widget/categories_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          CustomSearchField(),
          SizedBox(
            height: 20.0,
          ),
          Image.asset(
            "assets/images/buy.jpg",
            width: 100,
            height: 100,
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
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                      child: Image(
                        image: NetworkImage(
                            "https://img.freepik.com/premium-psd/headset-product-social-media-post-banner-template_448714-340.jpg?ga=GA1.1.328080625.1734945837&semt=ais_hybrid"),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: AppColors.kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                          ),
                        ),
                        child: Text(
                          "10% OFF",
                          style: TextStyle(
                            color: AppColors.kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "product Name",
                            style: TextStyle(
                                color: AppColors.kBlackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: AppColors.kGreyColor,
                              ),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("223LE", style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                  color: AppColors.kBlackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),),
                              Text("120LE", style: TextStyle(
                                  color: AppColors.kGreyColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),),

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
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
