import 'package:flutter/material.dart';

import '../main_drawer.dart';
class Bills extends StatefulWidget {
  @override
  _BillsState createState() => _BillsState();
}

class _BillsState extends State<Bills> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Bills',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
