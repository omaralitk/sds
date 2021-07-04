import 'package:flutter/material.dart';
import 'package:sds/View/main_drawer.dart';
class Customer_Receipt extends StatefulWidget {
  @override
  _Customer_ReceiptState createState() => _Customer_ReceiptState();
}

class _Customer_ReceiptState extends State<Customer_Receipt> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Customer Receipt',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer1(),
    );
  }
}
