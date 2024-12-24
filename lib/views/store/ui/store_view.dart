import 'package:flutter/material.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Welcome To Our Market",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
    );
  }
}
