import 'package:flutter/material.dart';
import 'package:market_app/core/components/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder:(context,index) {
          return ProductCard();
        });
  }
}