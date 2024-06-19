import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/controller/bottomnav_controller.dart';
import 'package:provider/provider.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider.of<BottomnavController>(context)
          .mypages[Provider.of<BottomnavController>(context).selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Provider.of<BottomnavController>(context).selectedindex,
        onTap:
            Provider.of<BottomnavController>(context, listen: false).onItemTap,
        elevation: 0,
        backgroundColor: Colors.blue[400],
        selectedIconTheme: IconThemeData(color: Colors.white, size: 25),
        unselectedItemColor: Colors.grey[500],
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news_solid), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.layers_alt_fill), label: "Category"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search")
        ],
      ),
    );
  }
}
