import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/navpages/course_lesson_page/cources_detailes.dart';
import 'package:flutter_app1/my_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MainPage(),
      home: CourcesDetailes(),
    );
  }
}
