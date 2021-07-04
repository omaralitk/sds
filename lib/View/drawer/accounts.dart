import 'package:flutter/material.dart';

import '../main_drawer.dart';
class accounts extends StatefulWidget {
  @override
  _accountsState createState() => _accountsState();
}

class _accountsState extends State<accounts> {
  Color mainColor=Colors.lightGreen[900];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Accounts',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
