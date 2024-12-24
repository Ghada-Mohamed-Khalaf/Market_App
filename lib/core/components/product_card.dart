import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';
import 'package:market_app/core/components/cache_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                child: CachedImage(url:  "https://img.freepik.com/premium-psd/headset-product-social-media-post-banner-template_448714-340.jpg?ga=GA1.1.328080625.1734945837&semt=ais_hybrid",),
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
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "223LE",
                          style: TextStyle(

                              color: AppColors.kBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "120LE",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: AppColors.kGreyColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),


                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.kPrimaryColor,
                        foregroundColor: AppColors.kWhiteColor,
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context){
                        //   return SignUp();
                        // }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 2.0,
                        ),
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}