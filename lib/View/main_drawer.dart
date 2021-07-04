import 'package:flutter/material.dart';
import 'package:sds/View/drawer/App.dart';
import 'package:sds/View/drawer/Bills.dart';
import 'package:sds/View/drawer/Reports.dart';
import 'package:sds/View/drawer/Tasks.dart';
import 'package:sds/View/drawer/Vendor_Receipt.dart';
import 'package:sds/View/drawer/accounts.dart';
import 'package:sds/View/drawer/change_org.dart';
import 'package:sds/View/drawer/help.dart';
import 'package:sds/View/drawer/products.dart';
import 'package:sds/View/drawer/projects.dart';
import 'package:sds/View/home.dart';

import 'drawer/Customer_Receipt.dart';
import 'drawer/customers.dart';
import 'drawer/dashboard.dart';
import 'drawer/invoices.dart';
import 'drawer/purchase_order.dart';
import 'drawer/quotations.dart';
import 'drawer/vendors.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  Color mainColor=Colors.lightGreen[900];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mainColor,
      ),
      child: Drawer(
        child: Container(
          color: mainColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(''),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: item1_drawer(
                      'Quick Actions',
                      Icon(
                        Icons.security,
                        color: Colors.white,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                  child: item1_drawer(
                      'Dashboard',
                      Icon(
                        Icons.personal_video,
                        color: Colors.white,
                      )),
                ),
                Text(' '),
                Text(
                  'Sales',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(''),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Customers()));
                  },
                  child: item2_drawer(
                      'Customers',
                      Icon(
                        Icons.people,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Quotations()));
                  },
                  child: item2_drawer(
                      'Quotations',
                      Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Invoices()));
                  },
                  child: item2_drawer(
                      'Invoices',
                      Icon(
                        Icons.request_quote_sharp,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Customer_Receipt()));
                  },
                  child: item2_drawer(
                      'Customer Receipt',
                      Icon(
                        Icons.sticky_note_2_rounded,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                Text(''),
                Text(
                  'Purchases',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(''),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Vendors()));
                  },
                  child: item2_drawer(
                      'Vendors',
                      Icon(
                        Icons.shopping_basket,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Purchase_order()));
                  },
                  child: item2_drawer(
                      'Purchase Orders',
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bills()));
                  },
                  child: item2_drawer(
                      'Bills',
                      Icon(
                        Icons.library_books_outlined,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => vendors_rec()));
                  },
                  child: item2_drawer(
                      'Vendor Receipt',
                      Icon(
                        Icons.sticky_note_2_rounded,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                Text(''),
                Text(
                  'Products',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(''),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => products()));
                  },
                  child: item1_drawer(
                      'Products',
                      Icon(
                        Icons.storefront,
                        color: Colors.white,
                      )),
                ),
                Text(''),
                Text(
                  'Accounts',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(''),
                InkWell(
                  onTap:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => accounts()));
                  },
                  child: item1_drawer(
                      'Accounts',
                      Icon(
                        Icons.poll,
                        color: Colors.white,
                      )),
                ),
                Text(''),
                Text(
                  'Projects and Tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(''),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Projects()));
                  },
                  child: item2_drawer(
                      'Projects',
                      Icon(
                        Icons.home_repair_service_sharp,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tasks()));
                  },
                  child: item2_drawer(
                      'Tasks',
                      Icon(
                        Icons.list,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                Text(''),
                Text(
                  'Reports',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(''),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Reports()));
                  },
                  child: item1_drawer(
                    'Reports',
                    Icon(
                      Icons.receipt_long_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(''),
                Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(''),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => change_org()));
                  },
                  child: item1_drawer(
                    'Change Organization',
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => App()));
                  },
                  child: item1_drawer(
                    'App',
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Help()));
                  },
                  child: item1_drawer(
                    'Help',
                    Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
