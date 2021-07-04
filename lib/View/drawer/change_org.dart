import 'package:flutter/material.dart';

import '../main_drawer.dart';
class change_org extends StatefulWidget {
  @override
  _change_orgState createState() => _change_orgState();
}

class _change_orgState extends State<change_org> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Select Organization',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
