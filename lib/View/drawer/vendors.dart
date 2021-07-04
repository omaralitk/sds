import 'package:flutter/material.dart';
import 'package:sds/View/main_drawer.dart';
class Vendors extends StatefulWidget {
  @override
  _VendorsState createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Vendors',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
