import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Sales extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  Color mainColor=Colors.lightGreen[900];
  String valueChoose;
  String valueChoose1;
  List Type=['As of date','Time period'];
  List location=['Main Branch'];
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
          'Report Information',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 320,

              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 5),
                    child: Container(
                      child: Text(
                        'Account Statment',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Divider(height: 1, color: Colors.grey),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Location'),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text('*',style: TextStyle(color: Colors.red),),
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 380,
                          height: 52,
                          decoration: BoxDecoration(

                            border: Border.all(color: Colors.black,),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                              hint: Text(''),
                              isExpanded: true,
                              value: valueChoose,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose = newValue;
                                });

                              },
                              items:location.map((valueItem) {
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
                            Text('Tracked?'),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,bottom: 10),
                        child: Container(
                          width: 380,
                          height: 52,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                              hint: Text(''),
                              isExpanded: true,
                              value: valueChoose1,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose1 = newValue;
                                });

                              },
                              items: Type.map((valueItem) {
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,top: 8,right: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(

                                children: [
                                  Row(
                                    children: [
                                      Text('From'),

                                    ],
                                  ),

                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width /2.5,
                                height: 52,

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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2,top: 8,right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Text('to'),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width /2.5,
                                height: 52,
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
                      ),
                    ],
                  ),

                ],
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: InkWell(
              onTap: () {
                print('Confirm');
              },
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                      border:
                      Border.all(color: mainColor, width: 1.5),
                      color: mainColor),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Confirm',
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
                primary: Colors.teal,
                onPrimary: Colors.white,
                surface: Colors.teal,
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
        ..text = DateFormat.yMd().format(_selectedDate)
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
                primary: Colors.teal,
                onPrimary: Colors.white,
                surface: Colors.teal,
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
        ..text = DateFormat.yMd().format(_selectedDate1)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController1.text.length,
            affinity: TextAffinity.upstream));
    }
  }

}
