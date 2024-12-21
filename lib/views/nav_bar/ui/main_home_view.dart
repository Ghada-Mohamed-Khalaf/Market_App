import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:market_app/views/auth/ui/widgets/custom_text_field.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        SizedBox(height: 10.0,),
        CustomTextFormField(labelText: "Search in Market", isSecure: false)
      ],)),
      bottomNavigationBar:GNav(
    rippleColor: Colors.grey[800]!, // tab button ripple color when pressed
    hoverColor: Colors.grey[700]!, // tab button hover color
    haptic: true, // haptic feedback
    tabBorderRadius: 15,
    tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
    tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
    tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
    curve: Curves.easeOutExpo, // tab animation curves
    duration: Duration(milliseconds: 900), // tab animation duration
    gap: 8, // the tab button gap between icon and text
    color: Colors.grey[800], // unselected icon color
    activeColor: Colors.purple, // selected icon and text color
    iconSize: 24, // tab button icon size
    tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
    tabs: [
    GButton(
    icon: Icons.home,
    text: 'Home',
    ),
    GButton(
    icon:Icons.store,
    text: 'Store',  ),
      GButton(
        icon:Icons.favorite,
        text: 'favorite',
      ),
      GButton(
        icon:Icons.person,
        text: 'Profile',
      )
    ]
      ),

    );
  }
}
