import 'package:flutter/material.dart';
import 'package:market_app/core/components/cache_image.dart';
import 'package:market_app/core/function/build_app_bar.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,"Product Name"),
      body: ListView(
        children: [
          CachedImage(url:  "https://img.freepik.com/premium-psd/headset-product-social-media-post-banner-template_448714-340.jpg?ga=GA1.1.328080625.1734945837&semt=ais_hybrid",),

        ],
      ),

    );
  }
}

