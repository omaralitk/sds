import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main_drawer.dart';
import 'package:mailto/mailto.dart';
const _url = 'https://sds.com.sa';
const _url2 = 'https://sds.sa/contact-us';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  Color mainColor=Colors.lightGreen[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Text(
            ' Help',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: Drawer1(),
        body: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 280,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Quick Actions'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(height: 1, color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: _launchURL,

                          child: Container(
                            width: 350,
                            height: 40,
                            color: mainColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.inbox,
                                  color: Colors.white,
                                ),
                                Text(' '),
                                Text(
                                  'Go to SDS.com.sa',

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: _launchURL2,

                          child: Container(
                            width: 350,
                            height: 40,
                            color: mainColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                Text(' '),
                                Text(
                                  'Email Support',

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: _launchURL2,
                          child: Container(
                            width: 350,
                            height: 40,
                            color: mainColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                Text(' '),
                                Text(
                                  'Call Support',

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: _launchURL,

                          child: Container(
                            width: 350,
                            height: 40,
                            color:mainColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.receipt,
                                  color: Colors.white,
                                ),
                                Text(' '),
                                Text(
                                  'View Knowledge Base(AR)',

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
              ),
            ),

          ],
        )
    );

  }

}
void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
void _launchURL2() async =>
    await canLaunch(_url2) ? await launch(_url2) : throw 'Could not launch $_url2';