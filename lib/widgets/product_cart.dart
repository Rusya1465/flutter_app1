import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: _searchField()),
        ),
      ),
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(children: <Widget>[
        Column(children: [ Text("Courses",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21.0,
            ))],)
       ,
        
        SizedBox(
          height: 15.0,
        ),
        Container(width: 80.0, height: 80.0, child: Center(child: Container(decoration: BoxDecoration(color: Colors.red[100], borderRadius: BorderRadius.circular(20.0))))),
        SizedBox(
          width: 12.0,
        ),
        Row(children: <Widget>[
          Container(width: 100.0, child: Text('с 0 до junior python developer', style: TextStyle(fontWeight: FontWeight.bold))),
          Container(width: 40.0, height: 20.0, child: Text('212 просмотров'))
        ])
      ]),
    ));
  }
}


Widget _searchField() {
  return Material(
    child: TextField(
      decoration: new InputDecoration(
        contentPadding: EdgeInsets.all(6),
        prefixIcon: Icon(Icons.search),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: new OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.black, width: 0.0),
          borderRadius: const BorderRadius.all(
            const Radius.circular(25.0),
          ),
        ),
        hintText: 'Живой поиск',
      ),
    ),
  );
}
