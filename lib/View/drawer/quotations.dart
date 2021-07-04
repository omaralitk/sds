import 'package:flutter/material.dart';

import '../main_drawer.dart';
class Quotations extends StatefulWidget {
  @override
  _QuotationsState createState() => _QuotationsState();
}

class _QuotationsState extends State<Quotations> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Quotations',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
