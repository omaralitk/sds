import 'package:flutter/material.dart';
import 'package:sds/View/main_drawer.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Dashboard',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
