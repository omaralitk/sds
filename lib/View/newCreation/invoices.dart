import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../main_drawer.dart';

class Invoices_Form extends StatefulWidget {
  @override
  _Invoices_FormState createState() => _Invoices_FormState();
}

class _Invoices_FormState extends State<Invoices_Form> {
  Color mainColor=Colors.lightGreen[900];
  DateTime _selectedDate;
  TextEditingController _textEditingController = TextEditingController();
  DateTime _selectedDate1;
  TextEditingController _textEditingController1 = TextEditingController();
  String now = DateTime.now().toString().substring(0, 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Create an Invoices',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),


      body: ListView(
        children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: Container(
                        child: Text(
                          'Commercial Document Details',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(height: 1, color: Colors.grey),
                    ),
                    Column(
                      children: [
                        Text(''),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Text('Reference'),
                              Text(
                                ' *',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 52,
                            width: 380,
                            child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Reference',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Text('Description'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 380,
                            child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Description',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text('Issued on'),
                                  Text('*',
                                      style: TextStyle(
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 380,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: now,
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              controller: _textEditingController,
                              onTap: () {
                                _selectDate(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text('Due on'),
                                  Text('*',
                                      style: TextStyle(
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 52,
                            width: 380,
                            child: TextField(

                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                hintText: now,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              controller: _textEditingController1,
                              onTap: () {
                                _selectDate1(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Text('Vendor'),
                              Text(
                                ' *',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 52,
                            width: 380,
                            child: TextField(
                                decoration: InputDecoration(
                                  hintText: '-',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Text('Location'),
                              Text(
                                ' *',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: Column(
                            children: [
                              Text(
                                'Main Branch',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                width: 400,
                height: 110,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Products & Services',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: Divider(height: 1, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              print('add product');
                            },
                            child: Container(
                              width: 350,
                              height: 40,
                              color: mainColor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Add Product',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                print('Save');
              },
              child: Container(
                  width: 350,
                  height: 40,

                  decoration: BoxDecoration(
                      border: Border.all(color: mainColor,width: 1.5),
                      color: mainColor),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  print('Save as Draft');
                },
                child: Container(
                    width: 350,
                    height: 40,

                    decoration: BoxDecoration(
                        border: Border.all(color: mainColor,width: 1.5),
                        color: Colors.white),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Save as Draft',
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                        ))),
              ),
            )
          ],
        ),
      ],
      ),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2040),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: mainColor,
                onPrimary: Colors.white,
                surface: mainColor,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.white,
            ),
            child: child,
          );
        });

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      _textEditingController
        ..text = DateFormat.yMMMd().format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }

  _selectDate1(BuildContext context) async {
    DateTime newSelectedDate1 = await showDatePicker(
        context: context,
        initialDate: _selectedDate1 != null ? _selectedDate1 : DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2040),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: mainColor,
                onPrimary: Colors.white,
                surface: mainColor,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.white,
            ),
            child: child,
          );
        });

    if (newSelectedDate1 != null) {
      _selectedDate1 = newSelectedDate1;
      _textEditingController1
        ..text = DateFormat.yMMMd().format(_selectedDate1)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController1.text.length,
            affinity: TextAffinity.upstream));
    }
  }
}
