
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market_app/views/auth/ui/home_view.dart';
import 'package:market_app/views/favorite/ui/favorite_view.dart';
import 'package:market_app/views/nav_bar/logic/cubit/state.dart';
import 'package:market_app/views/profile/ui/profile_view.dart';
import 'package:market_app/views/store/ui/store_view.dart';

class NavBarCubit extends Cubit<NavBarState>{
  NavBarCubit():super(NavBarInitial());
  static NavBarCubit get(context ){
    return BlocProvider.of(context);
  }
  int currentIndex=0;
  void  NavBarBottomNav(int index){
    currentIndex=index;
   emit(NavBarBottomNav(index));
  }
  List<Widget> views=[
    FavoriteView(),
    ProfileView(),
    HomeView(),
    StoreView(),

  ];


}