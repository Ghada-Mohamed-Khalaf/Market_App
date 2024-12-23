



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:market_app/core/app_colors.dart';

import 'package:market_app/views/nav_bar/logic/cubit/cubit.dart';
import 'package:market_app/views/nav_bar/logic/cubit/state.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NavBarCubit(),


      child: BlocBuilder<NavBarCubit,NavBarState>(builder: (context,state) {
        NavBarCubit cubit =BlocProvider.of<NavBarCubit>(context) ;


        return Scaffold(
          body: SafeArea(
            child:cubit.views[cubit.currentIndex],
            // Column(
            //     children: [
            //       SizedBox(
            //         height: 10.0,
            //       ),
            //       CustomTextFormField(labelText: "Search in Market", isSecure: false)
            //     ],
          ),

          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 12.0,
              ),
              child: GNav(
                onTabChange: (index){
                  cubit.NavBarBottomNav(index);
                },
                  rippleColor: Colors.grey[800]!,
                  // tab button ripple color when pressed
                  hoverColor: Colors.grey[700]!,
                  // tab button hover color
                  haptic: true,
                  // haptic feedback
                  tabBorderRadius: 15,
                  // tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
                  // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
                  // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
                  // curve: Curves.easeOutExpo, // tab animation curves
                  duration: Duration(milliseconds: 400),
                  // tab animation duration
                  gap: 8,
                  // the tab button gap between icon and text
                  color: AppColors.kGreyColor,
                  // unselected icon color
                  activeColor: AppColors.kWhiteColor,
                  // selected icon and text color
                  iconSize: 24,
                  // tab button icon size
                  tabBackgroundColor: AppColors.kPrimaryColor,
                  // selected tab background color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  // navigation bar padding
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.store,
                      text: 'Store',
                    ),
                    GButton(
                      icon: Icons.favorite,
                      text: 'favorite',
                    ),
                    GButton(
                      icon: Icons.person,
                      text: 'Profile',
                    )
                  ]),
            ),
          ),
        );

      },
    ),
    );

  }
}
