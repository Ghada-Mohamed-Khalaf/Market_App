import 'package:flutter/material.dart';
import 'package:market_app/core/components/product_list.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Center(
            child: Text(
              "Your Favorite Products",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),



          SizedBox(
            height: 15.0,
          ),


          ProductList()
        ],
      ),
    );

  }
}
