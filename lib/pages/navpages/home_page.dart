
import 'package:flutter_app1/widgets/product_cart.dart';



import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:CartView() ,
        
      ),
      

    );
  }
}

const courses = ["Python", "JavaScript", "c++"];
