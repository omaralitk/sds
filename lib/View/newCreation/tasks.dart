import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sds/Model/user.dart';
import 'package:sds/View/main_drawer.dart';

class Tasks_Form extends StatefulWidget {
  @override
  _Tasks_FormState createState() => _Tasks_FormState();
}

class _Tasks_FormState extends State<Tasks_Form> {
  Color mainColor=Colors.lightGreen[900];

  DateTime _selectedDate;
  TextEditingController _textEditingController = TextEditingController();
  String now = DateTime.now().toString().substring(0, 10);
  String valueChoose;
  String valueChoose3;
  String valueChoose2;
  String valueChoose4;
  List project = [' '];
  List priority = ['Very High', 'High', 'Medium', 'Low', 'Very Low'];
  List privacy = ['Public', 'Privacy'];
  List user = ['-', 'Omar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Receipt Create',
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
                  height: 875,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: Container(
                          child: Text(
                            'Receipt Details',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                                hintText: 'TASK - 1',
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Text('Name'),
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
                                hintText: 'Name',
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 8, right: 8, bottom: 10),
                        child: Divider(height: 1, color: Colors.grey),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Project'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: 380,
                              height: 52,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(
                                  hint: Text('-'),
                                  isExpanded: true,
                                  value: valueChoose,
                                  onChanged: (newValue) {
                                    setState(() {
                                      valueChoose = newValue;
                                    });
                                  },
                                  items: project.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Priority'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: 380,
                              height: 52,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(
                                  hint: Text('-'),
                                  isExpanded: true,
                                  value: valueChoose3,
                                  onChanged: (newValue) {
                                    setState(() {
                                      valueChoose3 = newValue;
                                    });
                                  },
                                  items: priority.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 5),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text('Due on'),
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
                                  hintText: '-',
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 8, right: 8, bottom: 10),
                        child: Divider(height: 1, color: Colors.grey),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Privacy'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: 380,
                              height: 52,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(
                                  hint: Text('-'),
                                  isExpanded: true,
                                  value: valueChoose2,
                                  onChanged: (newValue) {
                                    setState(() {
                                      valueChoose2 = newValue;
                                    });
                                  },
                                  items: privacy.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('User'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: 380,
                              height: 52,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(
                                  hint: Text('-'),
                                  isExpanded: true,
                                  value: valueChoose4,
                                  onChanged: (newValue) {
                                    setState(() {
                                      valueChoose4 = newValue;
                                    });
                                  },
                                  items: user.map((valueItem) {
                                    return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(valueItem),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 8, right: 8, bottom: 5),
                        child: Divider(height: 1, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 23, top: 20),
                        child: InkWell(
                          onTap: () {
                            print('Save');
                          },
                          child: Container(
                              width: 350,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: mainColor, width: 1.5),
                                  color: mainColor),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          child: Container(
                            child: Text(
                              'Attachments',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Divider(height: 1, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8,top:15),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                              },
                              child: Container(
                                width: 350,
                                height: 40,
                                color: mainColor,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.cloud_upload,
                                      color: Colors.white,
                                    ),
                                    Text('  '),
                                    Text(
                                      'Attach',
                                      style: TextStyle(
                                          fontSize: 17,
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
                  ),
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
}
