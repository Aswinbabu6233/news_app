import 'package:flutter/material.dart';
import 'package:news_app/view/category_screen.dart';
import 'package:news_app/view/homescreen.dart';
import 'package:news_app/view/search_screen.dart';

class BottomnavController with ChangeNotifier {
  int selectedindex = 0;
  void onItemTap(index) {
    selectedindex = index;
    notifyListeners();
  }

  List<Widget> mypages = [
    Homescreen(),
    CategoryScreen(),
    SearchScreen(),
  ];
}
