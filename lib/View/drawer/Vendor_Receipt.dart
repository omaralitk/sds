import 'package:flutter/material.dart';

import '../main_drawer.dart';
class vendors_rec extends StatefulWidget {
  @override
  _vendors_recState createState() => _vendors_recState();
}

class _vendors_recState extends State<vendors_rec> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Vendor Receipt',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
