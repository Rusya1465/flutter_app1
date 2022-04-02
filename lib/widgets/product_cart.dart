import 'package:flutter/material.dart';

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
          child: Column(children: <Widget>[
            Column(
              children: [
                Center(
                    child: Text("Courses",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0,
                        ))),
                SizedBox(
                  height: 28.0,
                ),
                _ProductCart(),
                SizedBox(
                  height: 28.0,
                ),
                _ProductCart(),
                SizedBox(
                  height: 28.0,
                ),
                _ProductCart(),
                SizedBox(
                  height: 28.0,
                ),
                _ProductCart(),
                SizedBox(
                  height: 28.0,
                ),
                _ProductCart()
              ],
            )
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

class _ProductCart extends StatelessWidget {
  const _ProductCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 80.0,
            height: 80.0,
            child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(20.0))))),
        SizedBox(
          width: 12.0,
        ),
        Column(children: <Widget>[
          Container(
              width: 200.0,
              child: Text('Python',
                  style: TextStyle(fontWeight: FontWeight.bold))),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Container(
                  width: 120.0, height: 20.0, child: Text('212 просмотров')),
              Container(width: 100.0, height: 20.0, child: Text('125 лайков'))
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(children: [
            Container(width: 120.0, height: 20.0, child: Text('28 уроков'))
          ])
        ])
      ],
    );
  }
}

class _CategoryView extends StatelessWidget {
  const _CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 20.0,
          width: 30.0,
          child: Center(
            child: Text('Python'),
          ),
        )
      ],
    );
  }
}
