import 'package:flutter/material.dart';
import 'package:market_app/core/components/Custom_search_field.dart';
import 'package:market_app/core/components/product_list.dart';
import 'package:market_app/views/home/ui/widget/categories_list.dart';


class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Center(
            child: Text(
              "Welcome To Our Market",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomSearchField(),


          SizedBox(
            height: 15.0,
          ),


          ProductList()
        ],
      ),
    );
  }
}
