import 'package:flutter/material.dart';
import 'package:sds/View/drawer/Customer_Receipt.dart';
import 'package:sds/View/drawer/Tasks.dart';
import 'package:sds/View/drawer/customers.dart';
import 'package:sds/View/drawer/dashboard.dart';
import 'package:sds/View/drawer/projects.dart';
import 'package:sds/View/drawer/purchase_order.dart';
import 'package:sds/View/drawer/vendors.dart';
import 'package:sds/View/newCreation/Purchase_Order.dart';
import 'package:sds/View/newCreation/Qouations.dart';
import 'package:sds/View/newCreation/bills.dart';
import 'package:sds/View/newCreation/invoices.dart';
import 'package:sds/View/newCreation/customer Receipt.dart';
import 'package:sds/View/newCreation/tasks.dart';
import 'package:sds/View/newCreation/vendor_receipt.dart';
import 'drawer/Bills.dart';
import 'drawer/invoices.dart';
import 'drawer/quotations.dart';
import 'package:sds/View/main_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color mainColor=Colors.lightGreen[900];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Quick Actions',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: mainColor,
        actions: [

        ],
      ),
      drawer: Drawer1(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                child: Text('New Creation',style: TextStyle(color:Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              Row(
                children: [
                   InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Qouations_Form()));
                        },
                        child: creation(
                            'Qouations',
                            Icon(
                              Icons.monetization_on,
                              color: mainColor,
                              size: 50,
                            ))),

                 InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Invoices_Form()));
                      },
                      child: creation(
                          'Invoices',
                          Icon(
                            Icons.request_quote_sharp,
                            color: mainColor,
                            size: 50,
                          )),
                    ),

                   InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Customer_Receipt_Form()));
                      },
                      child: creation(
                          'Customer Receipt',
                          Icon(
                            Icons.assignment_outlined,
                            color: mainColor,
                            size: 50,
                          )),
                    ),

                ],
              ),
              Row(
                children: [
                   InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Purchase_Order_Form()));
                      },
                      child: creation(
                          'Purchase Orders',
                          Icon(
                            Icons.shopping_cart,
                            color: mainColor,
                            size: 50,
                          )),

                  ),
                   InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Bills_Form()));
                      },
                      child: creation(
                          'Bills',
                          Icon(
                            Icons.library_books_outlined,
                            color: mainColor,
                            size: 50,
                          )),
                    ),

                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Vendor_Receipt()));
                      },
                      child: creation(
                          'Vendor Receipt',
                          Icon(
                            Icons.sticky_note_2_rounded,
                            color: mainColor,
                            size: 50,
                          )),
                    ),

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/3.5,
                      height: MediaQuery.of(context).size.width/3.5,
                    ),
                  ),
                   InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tasks_Form()));
                      },
                      child: creation(
                          'Tasks',
                          Icon(
                            Icons.list,
                            color: mainColor,
                            size: 50,
                          )),
                    ),


                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                child: Text('Quick Search',style: TextStyle(color:Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              Row(
                children: [
                   InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Quotations()));
                        },
                        child: creation2('Qouations','Awaiting Approval',

                            Icon(
                              Icons.monetization_on,
                              color: mainColor,
                              size: 50,
                            ))),


                 InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Invoices()));
                      },
                      child: creation2(
                          'Invoices','Awaiting Approval',
                          Icon(
                            Icons.request_quote_sharp,
                            color: mainColor,
                            size: 50,
                          )),

                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Purchase_order()));
                      },
                      child: creation2(
                          'Purchase Orders','Awaiting Approval',
                          Icon(
                            Icons.shopping_cart,
                            color: mainColor,
                            size: 50,
                          )),
                    ),

                ],
              ),
              Row(
                children: [
                   InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bills()));
                      },
                      child: creation2(
                          'Bills','Awaiting Approval',
                          Icon(
                            Icons.library_books_outlined,
                            color: mainColor,
                            size: 50,
                          )),

                  ),
                   InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Invoices()));
                      },
                      child: creation2(
                          'Invoices','Unpaid',
                          Icon(
                            Icons.request_quote_sharp,
                            color: mainColor,
                            size: 50,
                          )),

                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bills()));
                      },
                      child: creation2(
                          'Bills','Unpaid',
                          Icon(
                            Icons.library_books_outlined,
                            color: mainColor,
                            size: 50,
                          )),
                    ),

                ],
              ),
              Row(
                children: [

                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Projects()));
                      },

                      child: creation2(
                          'Projects','Assigned to me',
                          Icon(
                            Icons.home_repair_service_sharp,
                            color: mainColor,
                            size: 50,
                          )),
                    ),

                   InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tasks()));
                      },
                      child: creation2(
                          'Tasks','Assigned to me',
                          Icon(
                            Icons.list,
                            color: mainColor,
                            size: 50,
                          )),
                    ),

                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Projects()));
                      },

                      child: creation2(
                          'Projects','On Going',
                          Icon(
                            Icons.home_repair_service_sharp,
                            color: mainColor,
                            size: 50,
                          )),
                    ),


                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/3.5,
                      height: MediaQuery.of(context).size.width/3.5,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tasks()));
                      },
                      child: creation2(
                          'Tasks','On Going',
                          Icon(
                            Icons.list,
                            color: mainColor,
                            size: 50,
                          )),
                    ),


                ],
              ),
            ],
          )

        ],
      )
    );
  }
}

class creation extends StatelessWidget {
  String name;
  Icon icons;

  creation(this.name, this.icons);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Card(
          child: Container(
            width: MediaQuery.of(context).size.width/3.5,
            height: MediaQuery.of(context).size.width/3.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: icons,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$name',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12,color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class creation2 extends StatelessWidget {
  String name;
  String desc;
  Icon icons;

  creation2(this.name,this.desc, this.icons);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Card(
          child: Container(
            width: MediaQuery.of(context).size.width/3.5,
            height: MediaQuery.of(context).size.width/3.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 icons,

                Text(
                    '$name',
                    textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12,color: Colors.black),

                ),
               Text(
                    '$desc',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue,fontSize: 12),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class item1_drawer extends StatelessWidget {
  String title2;
  Icon icon2;

  item1_drawer(this.title2, this.icon2);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      child: Container(
        child: ListTile(
          title: Text(
            '$title2',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          leading: icon2,
        ),
      ),
    );
  }
}

class item2_drawer extends StatelessWidget {
  String title2;
  Icon icon2;
  Icon icon3;

  item2_drawer(this.title2, this.icon2, this.icon3);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      child: Container(
        child: ListTile(
          title: Text(
            '$title2',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          leading: icon2,
          trailing: icon3,
        ),
      ),
    );
  }
}
