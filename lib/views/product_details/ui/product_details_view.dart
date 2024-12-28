import 'package:flutter/material.dart';
import 'package:market_app/core/components/cache_image.dart';
import 'package:market_app/core/function/build_app_bar.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Product Name"),
      body: ListView(
        children: [
          CachedImage(
            url:
                "https://img.freepik.com/premium-psd/headset-product-social-media-post-banner-template_448714-340.jpg?ga=GA1.1.328080625.1734945837&semt=ais_hybrid",
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Name"),
                    Text("123 LE"),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                    children: [
                      Text("3 "),
                      Icon(Icons.star,color: Colors.amber),
                    ],

                  ),
                    Icon(Icons.favorite,color: Colors.grey,),


                  ],
                ),
                SizedBox(height: 10,),
                Text("books desc"),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.grey,),
                    Icon(Icons.star,color: Colors.grey,),


                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
