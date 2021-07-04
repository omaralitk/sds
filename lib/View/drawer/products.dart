import 'package:flutter/material.dart';

import '../main_drawer.dart';
class products extends StatefulWidget {
  @override
  _productsState createState() => _productsState();
}

class _productsState extends State<products> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Products',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
