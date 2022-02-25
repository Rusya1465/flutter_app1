import 'package:flutter/material.dart';
import 'package:flutter_app1/widgets/product_cart.dart';

import 'search.dart';

class CartView extends StatefulWidget {
  CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: <Widget>[
        Text("Courses",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21.0,
            )),
        SearchAppBar(),
        SizedBox(
          height: 12.0,
        ),
        Container(width: 80.0, height: 80.0, child: Center(child: Container(decoration: BoxDecoration(color: Colors.red[100], borderRadius: BorderRadius.circular(20.0))))),
        SizedBox(
          width: 12.0,
        ),
        Column(children: <Widget>[
          Container(width: 100.0, child: Text('с 0 до junior python developer', style: TextStyle(fontWeight: FontWeight.bold))),
          Container(width: 40.0, height: 20.0, child: Text('212 просмотров'))
        ])
      ]),
    ));
  }
}
