import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget {
  @override
  _SearchAppBarState createState() => new _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  Widget appBarTitle = new Text("AppBar Title");
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: _searchField()),
        ),
      ),
    );
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
