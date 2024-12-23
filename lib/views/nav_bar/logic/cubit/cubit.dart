
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market_app/views/home/ui/home_view.dart';
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
 Future<dynamic> NavBarBottomNav(int index)async{
    currentIndex=index;

   emit(NavBarBottomNav(index) as NavBarState);
  }
  List<Widget> views=[
    FavoriteView(),
    ProfileView(),
    HomeView(),
    StoreView(),

  ];


}