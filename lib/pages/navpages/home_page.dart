import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Text('Hello')
    );
  }
}