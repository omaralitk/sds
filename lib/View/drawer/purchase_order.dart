import 'package:flutter/material.dart';
import 'package:sds/View/main_drawer.dart';
class Purchase_order extends StatefulWidget {
  @override
  _Purchase_orderState createState() => _Purchase_orderState();
}

class _Purchase_orderState extends State<Purchase_order> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Purchase Order',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
