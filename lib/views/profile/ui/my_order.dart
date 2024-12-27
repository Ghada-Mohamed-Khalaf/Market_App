import 'package:flutter/material.dart';
import 'package:market_app/core/function/build_app_bar.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
    );
  }
}
