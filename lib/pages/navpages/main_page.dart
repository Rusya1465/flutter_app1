// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/navpages/fav_page.dart';
import 'package:flutter_app1/pages/navpages/home_page.dart';
import 'package:flutter_app1/pages/navpages/my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    FavoritePage(),
    MyPage(),
  ];
  void onTap(int index){
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
       items: [ 
          BottomNavigationBarItem(title:Text('Home'),icon: Icon(Icons.home)),
          BottomNavigationBarItem(title:Text('Catalog'),icon: Icon(Icons.menu_book_rounded)),
          BottomNavigationBarItem(title:Text('Favorite'),icon: Icon(Icons.star)),
          BottomNavigationBarItem(title:Text('MyPage'),icon: Icon(Icons.person_sharp)),
      ],
      ),
    );
  }
}