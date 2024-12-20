import 'package:flutter/material.dart';
import 'package:market_app/views/auth/ui/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our Market',
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}


