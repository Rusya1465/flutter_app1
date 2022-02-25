import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/navpages/fav_page.dart';
import 'package:flutter_app1/pages/navpages/home_page.dart';
import 'package:flutter_app1/pages/navpages/notification_page.dart';
import 'package:flutter_app1/pages/navpages/profile_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List pages = [
    HomePage(),
    NotificationPage(),
    FavoritePage(),
    ProfilePage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.orange[900],
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Catalog', icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(label: 'Favorite', icon: Icon(Icons.star)),
          BottomNavigationBarItem(
              label: 'MyPage', icon: Icon(Icons.person_sharp)),
        ],
      ),
    );
  }
}
