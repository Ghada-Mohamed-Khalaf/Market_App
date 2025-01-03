import 'package:flutter/material.dart';
import 'package:market_app/views/auth/ui/login_view.dart';
import 'package:market_app/views/favorite/ui/favorite_view.dart';
import 'package:market_app/views/home/ui/home_view.dart';

import 'package:market_app/views/nav_bar/ui/main_home_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://pdbpghagwrlseewoecse.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBkYnBnaGFnd3Jsc2Vld29lY3NlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzUyMDMwMjEsImV4cCI6MjA1MDc3OTAyMX0.oPwXknRn_L3aAQVFMaZURETHJ2uBGk_r5Uut2gK9Bl0',
  );

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
      home:MainHomeView(),
    );
  }
}


