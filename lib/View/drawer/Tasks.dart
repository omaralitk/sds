import 'package:flutter/material.dart';

import '../main_drawer.dart';
class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Tasks',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
